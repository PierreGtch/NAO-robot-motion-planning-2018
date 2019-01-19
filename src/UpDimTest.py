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
			e1 = np.array([1,0,0])
			e2 = np.array([0,1,0])
			n = np.array([0,0,1])
			a = UpDim(origin,e1,e2,n)
		except:
			self.assertEqual("","Problem during initialisation")

	def test_output(self):
		origin = np.array([0,0,0])
		e1 = np.array([1,0,0])
		e2 = np.array([0,1,-1])
		n = np.array([0, 0, 1])
		c = UpDim(origin,e1,e2,n)
		out = c.convert(0.1,0.5)
		self.assertEqual(np.all(out == np.array([0.1,0.5,-0.5])),True)


	def test_list(self):
		origin = np.array([0, 0, 0])
		e1 = np.array([1, 0, 0])
		e2 = np.array([0, 1, -1])
		n = np.array([0, 0, 1])
		c = UpDim(origin, e1, e2, n)
		out = c.convert_list([(0.1, 0.5),(0.2,0)])
		self.assertEqual(np.all(out == np.array([[0.1, 0.5, -0.5],[0.2,0,0]])), True)

	def test_list_w_rot(self):
		origin = np.array([0, 0, 0])
		e1 = np.array([1, 0, 0])
		e2 = np.array([0, 1, -1])
		n = np.array([0, 0, 1])
		c = UpDim(origin, e1, e2,n)
		out = c.convert_list([(0.1, 0.5),(0.2,0)],add_rot=True)
		self.assertEqual(np.all(out == np.array([[0.1, 0.5, -0.5,0,0,0],[0.2,0,0,0,0,0]])), True)

	def test_normal(self):
		origin = np.array([0, 0, 0])
		e1 = np.array([1, 0, 0])
		e2 = np.array([0, 1,0])
		n = np.array([0, 0, 1])
		c = UpDim(origin, e1, e2, n)
		self.assertEqual(np.all(np.array([0,0,1])==c.normal),True)

if __name__=="__main__":
	unittest.main()

