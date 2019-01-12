# =========================================================
# =========================================================

# Kmbrlynn
# July 2013
# Simple GUI paint app built with Python
# https://github.com/kmbrlynn/Paint-py/blob/master/Paint-py.py

# =========================================================
# =========================================================


from tkinter import *

# some line attributes
color = "black"
# this will hold a pressed or released value
mouseState = "up"
# this will hold the x or y value of the cursor. null if not pressed
xState = None
yState = None

# =========================================== SETUP


def main():
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

    # RED button - create
    redButton = Button(root, text ="Red", command = redPressed)
    # ORANGE button - create
    orangeButton = Button(root, text ="Orange", command = orangePressed)
    # YELLOW button - create
    yellowButton = Button(root, text ="Yellow", command = yellowPressed)
    # GREEN button - create
    greenButton = Button(root, text ="Green", command = greenPressed)
    # BLUE button - create
    blueButton = Button(root, text ="Blue", command = bluePressed)
    # PURPLE button - create
    purpleButton = Button(root, text ="Purple", command = purplePressed)
    # GRAY button - create
    grayButton = Button(root, text ="Gray", command = grayPressed)
    # BLACK button - create
    blackButton = Button(root, text ="Black", command = blackPressed)
    # BROWN button - create
    brownButton = Button(root, text ="Brown", command = brownPressed)
    # ERASE button - create
    eraseButton = Button(root, text ="Erase", command = erasePressed)


    # this places the widgets. in order according to code.
    myCanvas.pack()
    redButton.pack(side = "left")
    orangeButton.pack(side = "left")
    yellowButton.pack(side = "left")
    greenButton.pack(side = "left")
    blueButton.pack(side = "left")
    purpleButton.pack(side = "left")
    grayButton.pack(side = "left")
    blackButton.pack(side = "left")
    brownButton.pack(side = "left")
    eraseButton.pack(side = "right")

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
        global xState
        global yState
        # ...and xState and yState are null - aka release() is NOT true,
        if xState is not None and yState is not None:
            event.widget.create_oval(xState,yState,event.x,event.y, outline = color, fill = color)
            event.widget.create_line(xState,yState,event.x,event.y, fill = color)
        # then populate xState and yState with the coords of the mouse position - aka draw :)
        xState = event.x
        yState = event.y

# function for when mouse is in released position
def release(event):
    global mouseState
    global xState
    global yState
    mouseState = "up"
    # reset the line when you let go of the button
    xState = None
    yState = None

# =========================================== BUTTONS

# RED function
def redPressed():
    global color
    print("red clicked")
    color = "red"

# ORANGE function
def orangePressed():
    global color
    print("orange clicked")
    color = "orange"

# YELLOW function
def yellowPressed():
    global color
    print("yellow clicked")
    color = "yellow"

# GREEN function
def greenPressed():
    global color
    print("green clicked")
    color = "green"

# BLUE function
def bluePressed():
    global color
    print("blue clicked")
    color = "blue"

# PURPLE function
def purplePressed():
    global color
    print("purple clicked")
    color = "purple"

# GRAY function
def grayPressed():
    global color
    print("gray clicked")
    color = "gray"

# BLACK function
def blackPressed():
    global color
    print("black clicked")
    color = "black"

# BROWN function
def brownPressed():
    global color
    print("brown clicked")
    color = "brown"

# ERASE function
def erasePressed():
    global color
    print("erase clicked")
    print("diam width increased")
    color = "white"

# ============================

if __name__ == "__main__":
    main()
