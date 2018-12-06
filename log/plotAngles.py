#!/usr/bin/python2.7

import numpy 
a = numpy.loadtxt('angleEst.log', delimiter=',')

angles = a[::2];

tvect = a[1::2];

print angles
print tvect
