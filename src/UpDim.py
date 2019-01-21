# coding: utf8

"""
	Converion from the 2D plane to the 3D plane
"""

import numpy as np

class RangeError(Exception):
	def __init__(self,msg):
		Exception.__init__(self,msg)

class UpDim():
	"""
		A class which provide method to convert 2D coordinates in a plane to 3D coordinates.
	"""
	def __init__(self,origin,e1,e2,normal):
		"""
		:param origin: An arry with the coordinates of a  point on the target point which will be the translation of the point (0,0) from the 2D space.
		:param e1: An array for a basis of the 3D plane.
		:param e2: An array for a basis of the 3D plane.
		:param normal: An array representing a vector which goes out of the plan.
		"""
		self.origin	= origin
		self.e1 = e1
		self.e2 = e2
		cross_unsigned = np.cross(self.e1,self.e2)
		cross_normalized = cross_unsigned/np.linalg.norm(cross_unsigned)
		norm_normalized = normal/np.linalg.norm(normal)
		angle = np.arccos(np.dot(cross_normalized,norm_normalized))

		if angle >= 0.5 * np.pi :
			self.normal = - cross_normalized
		else:
			self.normal = cross_normalized

		self.normal = self.normal * np.linalg.norm(self.e1)

		# from mpl_toolkits.mplot3d import Axes3D  # noqa: F401 unused import
		#
		# import matplotlib.pyplot as plt
		# x = np.array([origin[0], origin[0], origin[0]])
		# y = np.array([origin[1], origin[1], origin[1]])
		# z = np.array([origin[2], origin[2], origin[2]])
		# u = np.array([self.e1[0], self.e2[0], self.normal[0]])
		# v = np.array([self.e1[1], self.e2[1], self.normal[1]])
		# w = np.array([self.e1[2], self.e2[2], self.normal[2]])
		#
		# fig = plt.figure()
		# ax = fig.gca(projection='3d')
		#
		# ax.quiver(x,y,z,u,v,w,arrow_length_ratio=0.01)
		# ax.set_xlabel("x")
		# ax.set_ylabel("y")
		# ax.set_zlabel("z")
		# plt.show()

	def convert(self,x,y,touch=0):
		"""
			Convertit un point du plan 2D vers le plan 3D.
		:param x: La coordonnée en x.
		:param y: La coordonnée en y.
		:param touch: Distance between the pen and the plan.
		:return : Un array contenant les coordonnées (x,y,z) du point 3D.
		"""
		if x < 0 or x > 1:
			raise RangeError("Value of x should be between 0 and 1 but is {0}.".format(x))
		if y < 0 or y > 1:
			raise RangeError("Value of y should be between 0 and 1 but is {0}.".format(y))
		delta_x =  x * self.e1
		delta_y =  y * self.e2
		res = self.origin + delta_x + delta_y
		if touch != 0:
			res += touch * self.normal
		return res

	def convert_list(self,points,add_rot=False,touch=0):
		"""
		Convert a list of 2D points to 3D points.
		:param points: A list of 2D points
		:param add_rot: If True, add rotations egals to 0
		:param touch: The distance.
		:return: A list of 3D points
		"""
		res = []
		for (x,y) in points:
			res.append(self.convert(x,y,touch=touch))
		if not add_rot:
			res = np.array(res)
		else:
			res = np.hstack((np.array(res),np.zeros((len(res),3))))
		return res.tolist()

	def normal(self):
		"""
		Return a vector which is normal to the plan we are drawing on/
		:return: An array of 3 floats representing a vector normal to our plan.
		"""
		return self.normal