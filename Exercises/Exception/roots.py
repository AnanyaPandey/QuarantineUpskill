# -*- coding: utf-8 -*-
"""
Created on Sun Mar 29 15:26:20 2020

@author: pandey
"""

def sqrt(x):
    guess = x
    i=0
    # in order to catch an exception we are raining an exception
    # Except
    if x<0:
        raise ValueError("Cannot computer square root of" f" Negative Number {x}")
            
    while guess * guess != x and i <20 :
        guess = (guess+x/guess)/2.0
        i+=1
    return guess

def main():
    print(sqrt(9))
    print(sqrt(2))
    try:
        print("underroot -1",sqrt(-1))
        
    except ZeroDivisionError:
        print("ERROR : Square root of Negative number")
        
    print('Program Executed Normally')

if __name__ == '__main__':
    main()
    
    