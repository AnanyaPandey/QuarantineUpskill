import sys
from itertools import count, islice

def sequence():
	with open(filename,mode='rt',encoding='utf-8') as f: # with constructor wil open the file for us
		return [int(line.strip()) for line in f ]