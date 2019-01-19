# coding: utf8

"""
	Unittests for UpDim.py
"""

import unittest
import numpy as np

from UpDim import UpDim

class Test(unittest.TestCase):
	"""
	A class to test the module UpDim
	"""
	
	def test_init(self):
		try :
			origin = np.array([0,0,0])
			e1 = np.array([0,0,0])
			e2 = np.array([0,0,0])
			x_max = 42
			y_max = 42			
			a = UpDim(origin,e1,e2,x_max,y_max)
		except:
			self.assertEqual("","Problem during initialisation")

	def test_output(self):
		origin = np.array([0,0,0])
		e1 = np.array([1,0,0])
		e2 = np.array([0,1,-1])
		x_max = 10
		y_max = 10			
		c = UpDim(origin,e1,e2,x_max,y_max)
		out = c.convert(0.1,0.5)
		self.assertEqual(np.all(out == np.array([1,5,-5])),True)


	def test_list(self):
		origin = np.array([0, 0, 0])
		e1 = np.array([1, 0, 0])
		e2 = np.array([0, 1, -1])
		x_max = 10
		y_max = 10
		c = UpDim(origin, e1, e2, x_max, y_max)
		out = c.convert_list([(0.1, 0.5),(0.2,0)])
		self.assertEqual(np.all(out == np.array([[1, 5, -5],[2,0,0]])), True)

	def test_list_w_rot(self):
		origin = np.array([0, 0, 0])
		e1 = np.array([1, 0, 0])
		e2 = np.array([0, 1, -1])
		x_max = 10
		y_max = 10
		c = UpDim(origin, e1, e2, x_max, y_max)
		out = c.convert_list([(0.1, 0.5),(0.2,0)],add_rot=True)
		self.assertEqual(np.all(out == np.array([[1, 5, -5,0,0,0],[2,0,0,0,0,0]])), True)


if __name__=="__main__":
	unittest.main()

