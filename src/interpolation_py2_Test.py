# coding: utf8

"""
	Unittests for interpolation_py2.py
"""

import unittest
# from __future__ import division
# from __future__ import absolute_import
import numpy as np
# from scipy.interpolate import lagrange
# from math import ceil, floor
from interpolation_py2 import *

class Test(unittest.TestCase):

    def test(self):
        self.assertEqual(0, test_1d(8, 5))
        self.assertEqual(0, test_2d(15, 3))
        self.assertEqual(0, test_1d(4, 3, deriv=1))
        self.assertEqual(0, test_1d(4, 3, deriv=-1))
        self.assertEqual(0, test_2d(15, 3, deriv=1))


def test_1d(n, d_max, deriv=0):
    X = np.linspace(0,1,num=n)
    precision = 10
    X_details = np.linspace(0,1, num=n*precision)
    Y = np.random.normal(size=X.shape)
    for i in xrange(1,n):
        Y[i] += Y[i-1]

    Y_details = []
    for i in xrange(1,d_max+1):
        f = interpolate_1d(X,Y,i, deriv=deriv)
        y = [f(x) for x in X_details]
        Y_details.append((i,np.array(y)))

    import matplotlib.pyplot as plt
    plt.figure(1)
    plt.plot(X,Y, u'o')

    for i,y in Y_details:
        plt.plot(X_details, y,'-+', label=unicode(i))

    plt.legend()
    plt.show()
    return 0

def test_2d(n, d_max, deriv=0):
    dims = 2
    X = np.linspace(0,1,num=n)
    precision = 10
    X_details = np.linspace(0,1, num=n*precision)
    shape_Y = list(X.shape)
    shape_Y.append(dims)
    Y = np.random.normal(size=shape_Y)
    for i in xrange(1,n):
        Y[i] += Y[i-1]

    Y_details = []
    for i in xrange(1,d_max+1):
        f = interpolate_nd(X,Y,i, deriv=deriv)
        y = [f(x) for x in X_details]
        Y_details.append((i,np.array(y)))

    import matplotlib.pyplot as plt
    plt.figure(1)
    plt.plot(Y[:,0],Y[:,1], u'o')

    for i,y in Y_details:
        plt.plot(y[:,0],y[:,1], '-+', label=unicode(i))

    plt.legend()
    plt.show()
    return 0

if __name__=="__main__":
	unittest.main()
