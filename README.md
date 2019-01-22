# NAO-robot-motion-planning-2018

## About

This is our project for Jean-Paul Laumond and Justin Carpentier Robot Motion Planning class  
http://diplome.di.ens.fr/English.html#Planification_de_mouvement_en_robotique

It is about making the NAO robot draw on a board !

_demonstration :_

![gif](slides/demo.gif)



## Installation

#### Software
This project requires `python 2.7`, `pinoccio`, `tkinter`, the modules in [requirements.txt](requirements.txt)

For the modules, please run :
```bash
pip install -r requirements.txt
```
On ubuntu you can install `tkinter` with :
```bash
sudo apt-get install python-tk
```

To install `pinoccio`, please refer to https://stack-of-tasks.github.io/pinocchio/download.html

If you want to control graphically NAO, you will need `choregraphe 1.15.5` (available at http://doc.aldebaran.com/1-14/software/installing.html#linux)  
To launch `choregraphe` use the script at the root of the archive.


#### Hardware
You will then be able to either run our program on a simulated robot
or on the real robot

##### Simulation
The `choregraphe` program allows you to display a simulation
and in the choregraphe archive you will find a program
that simulates NAO at `bin/naoqi-bin`.

Run both programs, then from the choregraphe interface
connect the simulation to choregraphe.

The default IP and PORT are specified in [src/main.py](src/main.py) :
```python
robotIP = "127.0.0.1"
PORT = 9559
```
If your simulation's IP or PORT are different, please edit the [src/main.py](src/main.py) file

##### Real robot
To run our program on the real robot, start your NAO, connect to it
and set the right IP and PORT in [src/main.py](src/main.py)  
Please refer to http://doc.aldebaran.com/1-14/getting_started/index.html

You will need to place a pen in his left hand
(they are a bit weak so tape may be needed)
and place it in front of a little desk




## Usage

Once all requirements installed and the robot connected,
launch our program with :
```bash
python2 src/main.py
```
You will then be guided to initialize the environment.
NAO needs to know where the table is.

You will be asked to take his left hand
and to place in successively at three different places
with the pen touching the paper.
The first position will define the origin of a basis
and the two folowing will define the axis.
NAO now knows where the paper is.  
Then you will be asked to place the hand at a fourth position
with the pen lifted so that NAO can know where is the upside and where is the downside of the paper.

Finally a window will pop up and you will be able to make drawings.
NAO will reproduce them.

Two motion planning methods are available via the buttons :
 - **Inverse Kinematics Interpolation** where we compute all the arm angles for each point in the curve (more details available at [slides/nao.pdf](slides/nao.pdf)). This function uses the `pinocchio` library.
 - **API Interpolation** where we just use NAO's API and only have to specify the successive hand positions
