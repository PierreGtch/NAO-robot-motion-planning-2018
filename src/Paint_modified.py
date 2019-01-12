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

# some line attributes
color = "black"
ovals = True
# this will hold a pressed or released value
mouseState = "up"
# this will hold the x or y value of the cursor. null if not pressed
xState = None
yState = None
last_txy = []


myCanvas = None


# =========================================== SETUP


def main():
    global myCanvas

    root = Tk()
    root.wm_title("Paint!")

    # define screen dimensions for responsiveness
    screen_width = root.winfo_screenwidth()
    screen_height = root.winfo_screenheight()
    # set the window size
    root.minsize(int(screen_width/2), int(screen_height/2))

    # create a canvas
    myCanvas = Canvas(root)
    # fit the canvas to the window. width and height are built into Tkinter
    myCanvas.config(width = screen_width/2, height = screen_height/2)

    # LINE button - create
    lineButton = Button(root, text ="Line", command = linePressed)
    # DOTS button - create
    dotsButton = Button(root, text ="Dots", command = dotsPressed)
    # CLEAR button - create
    clearButton = Button(root, text ="Clear", command = clearPressed)
    # QUIT button - create
    quitButton = Button(root, text ="Quit", command = quitPressed)


    # this places the widgets. in order according to code.
    myCanvas.pack()
    quitButton.pack(side = "left")
    lineButton.pack(side = "right")
    dotsButton.pack(side = "right")
    clearButton.pack(side = "right")

    # bind my functions to built-in Tkinter mouse events
    myCanvas.bind("<Motion>", moveMouse)
    myCanvas.bind("<ButtonPress-1>", press)
    myCanvas.bind("<ButtonRelease-1>", release)

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
            event.widget.create_line(xState,yState,event.x,event.y, fill = color)
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

# LINE function
def linePressed():
    global ovals
    print("line clicked")
    ovals = False

# DOTS function
def dotsPressed():
    global ovals
    print("dots clicked")
    ovals = True

# CLEAR function
def clearPressed():
    global myCanvas
    print("clear clicked")
    myCanvas.delete("all")

# QUIT function
def quitPressed():
    print("quit clicked")
    exit(0)

# ============================ NAO-SPECIFIC

def send_data(t, xy):
    '''à compléter !!!'''
    print("time points :\n", t)
    print("corresponding coordinates :\n", xy)

# ============================ RUN APP

if __name__ == "__main__":
    main()
