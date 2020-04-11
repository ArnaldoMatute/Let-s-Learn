# -*- coding: utf-8 -*-
"""
Created on Mon Oct 14 00:20:20 2019

EXAMPLE OF EULER METHOD FOR A SECOND ORDER ODE  

EQUATION x''+4*pi^2x=0

@author: amatu
"""

import numpy as n
import matplotlib.pyplot as plt

ts=0.001
tfinal=3

y=n.array([0])
x=n.array([1])
dx=y
dy=-4*(n.pi**2)*y
t_=n.linspace(ts,tfinal,(tfinal-ts)/ts)


for t in t_:
    x=n.append(x,x[-1]+ts*dx[-1])
    y=n.append(y,y[-1]+ts*dy[-1])
    dx=n.append(dx,y)
    dy=n.append(dy,-4*(n.pi**2)*x[-1])

t1=0
t_=n.append(t1,t_)
plt.plot(t_,x) 
plt.xlabel("t") 
plt.ylabel("X(t): Solution to ODE") 
