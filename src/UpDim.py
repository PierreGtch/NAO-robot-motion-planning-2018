# coding: utf8

"""
	Converion from the 2D plane to the 3D plane
"""

import numpy as np

class UpDim():
	"""
		A class which provide method to convert 2D coordinates in a plane to 3D coordinates.
	"""
	def __init__(self,origin,e1,e2,x_max,y_max):
		"""
		:param origin: An arry with the coordinates of a  point on the target point which will be the translation of the point (0,0) from the 2D space.
		:param e1: An array for a basis of the 3D plane.
		:param e2: An array for a basis of the 3D plane.		
		:param x_max: A float describing how far we can go in 3D along e1.		
		:param y_max: A float describing how far we can go in 3D along e2.		
		"""
		self.origin	= origin
		self.e1 = e1
		self.e2 = e2
		self.x_max = x_max
		self.y_max = y_max

	def convert(self,x,y):
		"""
			Convertit un point du plan 2D vers le plan 3D.
		:param x: La coordonnée en x.
		:param y: La coordonnée en y.
		:return : Un array contenant les coordonnées (x,y,z) du point 3D.
		"""
		delta_x =  x * self.x_max * self.e1
		delta_y =  y * self.y_max * self.e2
		return self.origin + delta_x + delta_y

	def convert_list(self,points,add_rot=False):
		"""
		Convert a list of 2D points to 3D points.
		:param points: A list of 2D points
		:param add_rot: If True, add rotations egals to 0
		:return: A array of 3D points
		"""
		res = []
		for (x,y) in points:
			res.append(self.convert(x,y))
		if not add_rot:
			return np.array(res)
		else:
			return np.hstack((np.array(res),np.zeros((len(res),3))))
