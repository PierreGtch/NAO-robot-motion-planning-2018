# coding: utf-8

# =========================================================
# =========================================================

# from https://github.com/kmbrlynn/Paint-py/blob/master/Paint-py.py

# =========================================================
# =========================================================


try:
    # for Python2
    from Tkinter import *
except ImportError:
    # for Python3
    from tkinter import *
import numpy as np
import time
from naoqi.naoqi import ALProxy
import naoqi.motion as motion
from calibration import get_converter
from control import NaoqiInterpolation, NaoControlAngles, PenControler, Dab


# =========================================================
# GLOBAL PARAMETERS
# =========================================================

# some line attributes
color = "black"

robotIP = "169.254.226.148"
robotIP = "127.0.0.1"
PORT = 9559

dab_when_quit_pressed = True


# =========================================================
# =========================================================


# this will hold a pressed or released value
mouseState = "up"
# this will hold the x or y value of the cursor. null if not pressed
xState = None
yState = None
last_txy = []


myCanvas = None
ovals = False
interpolation_fun = None
converter = None
scale = None
pen_controler = None
dab = None
# =========================================== SETUP


def main(api_fun, inverse_fun):
    global myCanvas, scale

    root = Tk()
    root.wm_title("Nao drawer")

    # get screen dimensions
    screen = (0.75*root.winfo_screenwidth(), 0.75*root.winfo_screenheight())
    a4 = (29.7, 21.)
    # To have a window with A4 format and that fits in the screen :
    scale = (int(screen[0]), int(screen[0]*a4[1]/a4[0]))
    if scale[1]>screen[1]:
        scale = (int(screen[1]*a4[0]/a4[1]), int(screen[1]))
    # set the window size
    root.minsize(*scale)

    # create a canvas
    myCanvas = Canvas(root)
    # fit the canvas to the window. width and height are built into Tkinter
    myCanvas.config(width=scale[0], height=scale[1], bg='white')

    lineButton = Button(root, text ="Line")
    dotsButton = Button(root, text ="Dots")
    make_exclusive_same_fun([
        (lineButton, False),
        (dotsButton, True),
        ], set_ovals)

    apifunButton = Button(root, text ="API Interpolation")
    inversefunButton = Button(root, text ="Inverse Kinematics Interpolation")
    make_exclusive_same_fun([
        (apifunButton, api_fun),
        (inversefunButton, inverse_fun),
        ], set_interpolation_fun)

    # CLEAR button - create
    clearButton = Button(root, text ="Clear", command = clearPressed)
    # QUIT button - create
    quitButton = Button(root, text ="Quit", command = quitPressed)


    # this places the widgets. in order according to code.
    myCanvas.pack()
    quitButton.pack(side = "left")
    apifunButton.pack(side = "left")
    inversefunButton.pack(side = "left")
    lineButton.pack(side = "right")
    dotsButton.pack(side = "right")
    clearButton.pack(side = "right")

    # bind my functions to built-in Tkinter mouse events
    myCanvas.bind("<Motion>", moveMouse)
    myCanvas.bind("<ButtonPress-1>", press)
    myCanvas.bind("<ButtonRelease-1>", release)

    #initialize window
    clearButton.invoke()
    lineButton.invoke()
    apifunButton.invoke()

    root.mainloop()

# =========================================== MOUSE EVENTS

# function for when mouse is in pressed position
def press(event):
    # don't forget to include global vars in your function
    global mouseState
    mouseState = "down"

# function for when you move the mouse
def moveMouse(event):
    # essentially, if press() is true...
    if mouseState == "down":
        global xState, yState, last_txy, ovals
        # ...and xState and yState are null - aka release() is NOT true,
        if xState is not None and yState is not None:
            if ovals:
                event.widget.create_oval(xState,yState,event.x,event.y, outline = color, fill = color)
            event.widget.create_line(xState,yState,event.x,event.y, fill = color,width=4)
        # then populate xState and yState with the coords of the mouse position - aka draw :)
        xState = event.x
        yState = event.y
        t = time.time()
        last_txy.append((t, xState, yState))

# function for when mouse is in released position
def release(event):
    global mouseState, xState, yState, last_txy
    mouseState = "up"
    # reset the line when you let go of the button
    xState = None
    yState = None
    #send the last points and reset last_txy
    if len(last_txy)>0:
        l = np.array(last_txy)
        last_txy = []
        t = l[:,0]
        xy = l[:,1:]
        send_data(t, xy)

# =========================================== BUTTONS

def set_ovals(value):
    global ovals
    ovals = value

def set_interpolation_fun(value):
    global interpolation_fun
    interpolation_fun = value

# CLEAR function
def clearPressed():
    global myCanvas
    print("clear clicked")
    myCanvas.delete("all")

# QUIT function
def quitPressed():
    global dab_when_quit_pressed, dab
    print("quit clicked")
    if dab_when_quit_pressed:
        dab.dab()
    exit(0)

# ============================ UTILS

def make_exclusive(buttons, initial=None):
    '''given a list of pairs of buttons and associated command,
    make the buttons exclusive :
    when one is pressed, it stays pressed and other are realeased'''
    def wrap(fun, i):
        def wrapped(*args, **kwargs):
            for j, (b, fb) in enumerate(buttons):
                if i == j:
                    b.config(relief=SUNKEN)
                else:
                    b.config(relief=RAISED)
            return fun(*args, **kwargs)
        return wrapped
    for i, (b, f) in enumerate(buttons):
        b.config(command=wrap(f, i))
    if initial != None:
        wrap(lambda: 0, initial)()

def make_exclusive_same_fun(buttons, function, initial=None):
    '''given a function and a list of pairs of buttons and
    associated parameter to the function, make the buttons exclusive :
    when one is pressed, it stays pressed and other are realeased'''
    #buttons2 = [(b, lambda: function(p)) for (b,p) in buttons]
    buttons2 = []
    for (b,p) in buttons:
        f = lambda p : lambda: function(p) #because some local/global problems
        buttons2.append((b, f(p)))
    return make_exclusive(buttons2, initial=initial)

# ============================ NAO-SPECIFIC

def send_data(t, xy):
    global converter, interpolation_fun, pen_controler
    #print("time points :\n", t)
    #print("corresponding coordinates :\n", xy)
    xy = normalize(xy)

    path = converter.convert_list(xy, add_rot=False)
    start_up = converter.convert(*xy[0], touch=1)
    end_up = converter.convert(*xy[-1], touch=1)
    start_up_mid = converter.convert(*xy[0], touch=0.5)
    end_up_mid = converter.convert(*xy[-1], touch=0.5)
    start_up_14 = converter.convert(*xy[0], touch=0.75)
    end_up_14 = converter.convert(*xy[-1], touch=0.25)
    start_up_34 = converter.convert(*xy[0], touch=0.25)
    end_up_34 = converter.convert(*xy[-1], touch=0.75)

    path = np.vstack((start_up,start_up,start_up_14,start_up_mid,start_up_34,path,end_up_14,end_up_mid,end_up_34,end_up,end_up))

    #import pickle
    #with open("path.pickle", "wb") as f:
    #    pickle.dump(path, f)


    #initialize the pen position
   # pen_controler.down(interpolation_fun, path[0])

    # we can eventually resample points here:
    time_init = t[0]
    t = t - time_init
    t = np.hstack((0,1,1.25,1.5,1.75,2+t,t[-1]+2.25,t[-1]+2.5,t[-1]+2.75,t[-1]+3,t[-1]+4))
    time = (3 + 2 * t).tolist()

    #with open("time.pickle", "wb") as f:
    #    pickle.dump(time, f)

    if interpolation_fun != None:
        interpolation_fun.send(time, path)
    else:
        print("/!\\ Fonction not implemented")

    #raise the pen
  #  pen_controler.up(interpolation_fun)


def normalize(xy):
    global scale
    return np.divide(xy, scale)

# ============================ RUN APP

if __name__ == "__main__":
    global converter, pen_controler, dab
    proxy = ALProxy("ALMotion",robotIP,PORT)
    postureProxy = ALProxy("ALRobotPosture", robotIP, PORT)

    dab = Dab(proxy)
    import pickle
    with open("converter_mini2.pickle","rb") as f:
        converter = pickle.load(f)

    #converter = get_converter(proxy)
    pen_controler = PenControler(converter, distance=0.1)
    api_fun = NaoqiInterpolation(proxy, 'LArm', motion.FRAME_TORSO, 7)
    inverse_fun = NaoControlAngles(proxy,"kinematics/NAOH25V33.urdf")
    main(api_fun, inverse_fun)
