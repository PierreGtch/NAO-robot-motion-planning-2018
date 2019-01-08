import math

def circle(t,radius=1,dim=2):
    """
	Give the coordinate of a point in circle according to its parametric
	representation.
	t should be between 0 and 1.
	radius gives the radius of the desired circle.
	dim  is the dimension in which the coordinates are given, for now it
		 has no effect.
    """
    t = 2 * math.pi * t
    return radius*math.cos(t),radius*math.sin(t)

def square(t, size=1,true_acc=False,dim=2):
    """
        Give the coordinate of a point in square according to its parametric
        representation.
        t should be between 0 and 1.
        size gives the size of the desired square.
        true_acc is a parameter which indicate if the acceleration is constant
		(not yet implemented)
        dim  is the dimension in which the coordinates are given, for now it
                 has no effect.
    """
    t = 4 * t
    if int(t) == 0:
	return size * t, 0
    if int(t) == 1:
        return size, size * (t - 1)
    if int(t) == 2:
        return size * (2 - t), size
    if int(t) == 3:
        return 0, size * (3 - t)
