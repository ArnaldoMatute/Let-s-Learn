# -*- coding: utf-8 -*-
"""
Created on Sun Oct 13 22:14:42 2019

EXAMPLE OF NEWTON-RAPHSON ALGORITHM

@author: amatu
"""

import matplotlib.pyplot as plt

def poly(x):
    return x**5-3*x**4+2*x**3-6*x**2+x-3

def poly2(x):
    return 5*x**4-12*x**3+6*x**2-12*x+1

x_=10 #Seed #At the end, the result will be here
x_old=100
Iter = 1
tol=1e-2
MaxIter = 100
his=[x_] #Historical values to plot

while x_old - x_ > tol or Iter > MaxIter:
    x_old=x_
    x_=x_old-(poly(x_)/poly2(x_))
    Iter += 1
    his.append(x_)

plt.plot(his)   
plt.xlabel("Iterations") 
plt.ylabel("Current candidate to solution") 

    
    
    
    
