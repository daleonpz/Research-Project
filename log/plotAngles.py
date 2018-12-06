#!/usr/bin/python2.7

import numpy 
import matplotlib.pyplot as plt
from scipy import stats

def mystats( array, name ):
    print name
    print "mean: " + str(numpy.mean(array))
    print "stdev: " + str(numpy.std(array))
    print "median: " + str(numpy.median(array))


a = numpy.loadtxt('angleEst.log', delimiter=',')

angles = a[::2];
# X,Z are rotated 180 degrees
X_a =(180-abs(angles[:,0])) ;
Y_a = angles[:,1];
Z_a =(180-angles[:,2]) ;

mystats(X_a, "X")
mystats(Y_a, "Y")
mystats(Z_a, "Z")

plt.plot(X_a)
plt.plot(Y_a)
plt.plot(Z_a)


tvect = a[1::2];
d = 100*numpy.linalg.norm(tvect, axis=1)
mystats(d, "distance cm")

plt.legend(['X-axis', 'Y-axis', 'Z-axis'], loc='upper right')
plt.xlabel("samples")
plt.ylabel("degrees")
plt.show()
