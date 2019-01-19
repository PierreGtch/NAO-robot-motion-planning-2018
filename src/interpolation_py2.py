from __future__ import division
from __future__ import absolute_import
import numpy as np
from scipy.interpolate import lagrange
from math import ceil, floor


def to_funct(intervals, polynoms, raiseValueError):
    u''' if the value is out of the intervals and raiseValueError=True,
    then raises a ValueError. If raiseValueError=False,
    the returned function is false after and before the intervals. '''
    def dico(x, i0, i1):
        if i0+1 == i1:
            return polynoms[i0]
        imid = int(floor((i0+i1)/2))
        if x>intervals[imid]:
            return dico(x, imid, i1)
        else:
            return dico(x, i0, imid)

    x_min = intervals[0]
    x_max = intervals[-1]
    def funct(x):
        if raiseValueError and (x<x_min or x>x_max):
            raise ValueError(u'function defined between {} and {} (not in {})'.format(x_min, x_max, x))
        elif x<x_min:
            return polynoms[0](x_min)
        elif x>x_max:
            return polynoms[-1](x_max)

        p = dico(x, 0, len(intervals)-1)
        return p(x)

    return funct

def interpolate_1d(x, y, d, testing=False, deriv=0, raiseValueError=False):
    u''' Givet two lists x and y s.t. f(x)=y,
    returns a continious function composed of polynoms of degree d'''
    assert isinstance(d,int) and d >= 1
    x = np.array(x)
    y = np.array(y)
    assert x.shape==y.shape
    assert x.ndim==1
    before = int(1 - ceil(d/2))
    after = int(1 + floor(d/2))
    first = -before
    last = len(x)-after+1

    polynoms = []
    for i in xrange(first, last):
        xi = x[i+before:i+after+1]
        yi = y[i+before:i+after+1]
        pi = lagrange(xi, yi)

        # derivation :
        j = deriv
        if j > 0:
            while j != 0:
                j -= 1
                pi = pi.deriv()
        elif j < 0:
            while j != 0:
                j += 1
                pi = pi.integ()

        polynoms.append(pi)

    intervals = x[first:last].copy()
    intervals[0] = x[0]
    intervals[-1] = x[-1]

    funct = to_funct(intervals, polynoms, raiseValueError=raiseValueError)
    if testing:
        return funct, intervals, polynoms
    return funct

def interpolate_nd(t, points, d, deriv=0, raiseValueError=False):
    u''' Givet two lists t and points
    s.t. points is a list of vectors of the same dim
    returns a continious function composed of polynoms of degree d'''
    assert isinstance(d,int) and d >= 1
    t = np.array(t)
    points = np.array(points)
    assert t.shape[0]==points.shape[0]
    assert t.ndim==1

    output_shape = points[0].shape
    outputs = {}
    for i in np.ndindex(output_shape):
        y = np.array([x[i] for x in points])
        f = interpolate_1d(t, y, d, testing=False, deriv=deriv, raiseValueError=raiseValueError)
        outputs[i] = f

    def func(x):
        out = np.zeros(output_shape)
        for i in np.ndindex(output_shape):
            out[i] = outputs[i](x)
        return out
    return func

def resample(points, n, d=3):
    t0, t1 = 0, 1
    s = points.shape
    t = np.linspace(t0, t1, s[0])
    f = interpolate_nd(t, points, d=d)

    tt = np.linspace(0, 1, n)
    out = []
    for t_x in tt:
        out.append(f(t_x))
    return np.array(out)

def sample(f, t0, t1, n):
    t = np.linspace(t0, t1, n)
    out = []
    for t_x in t:
        out.append(f(t_x))
    return np.array(out)

#------------------------------------------------

def test_1d(n,d_max):
    X = np.linspace(0,1,num=n)
    precision = 10
    X_details = np.linspace(0,1, num=n*precision)
    Y = np.random.normal(size=X.shape)
    for i in xrange(1,n):
        Y[i] += Y[i-1]

    Y_details = []
    for i in xrange(1,d_max+1):
        f = interpolate_1d(X,Y,i)
        y = [f(x) for x in X_details]
        Y_details.append((i,np.array(y)))

    import matplotlib.pyplot as plt
    plt.figure(1)
    plt.plot(X,Y, u'o')

    for i,y in Y_details:
        plt.plot(X_details, y, label=unicode(i))

    plt.legend()
    plt.show()

def test_2d(n,d_max):
    dims = 2
    X = np.linspace(0,1,num=n)
    precision = 10
    X_details = np.linspace(0,1, num=n*precision)
    shape_Y = list(X.shape).append(dims)
    Y = np.random.normal(size=shape_Y)
    for i in xrange(1,n):
        Y[i] += Y[i-1]

    Y_details = []
    for i in xrange(1,d_max+1):
        f = interpolate_nd(X,Y,i)
        y = [f(x) for x in X_details]
        Y_details.append((i,np.array(y)))

    import matplotlib.pyplot as plt
    plt.figure(1)
    plt.plot(Y[:,0],Y[:,1], u'o')

    for i,y in Y_details:
        plt.plot(y[:,0],y[:,1], label=unicode(i))

    plt.legend()
    plt.show()


#----------------------------------------------


test_1d(8, 5)
test_2d(15, 3)
