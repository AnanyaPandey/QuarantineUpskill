# -*- coding: utf-8 -*-
"""
Created on Sun Mar 29 01:07:02 2020

@author: pandey
"""
import sys
DIGIT_MAP = {
        'zero': '0',
        'one': '1',
        'two': '2',
        'three': '3',
        'four': '4',
        'five': '5',
        'six': '6',
        'seven': '7',
        'eight': '8',
        'nine': '9',
        }

def convert(s=[]):
    try:
        number=''
        for token in s:
            number += DIGIT_MAP[token]
        x = int(number)
    except (KeyError,TypeError) as e:
    # except (KeyError,TypeError): also works
        x = -1
        # pass 
        print(f'Wrong input :{e!r}',file=sys.stderr)
    return(x)
