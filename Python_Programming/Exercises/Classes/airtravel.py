# -*- coding: utf-8 -*-
"""
Created on Tue Apr 14 15:21:07 2020

@author: pandey
"""

class Flight:
	def __init__(Self,number):
		self._number = number 

# by python convention, implementation details start with _ undescore
# _number is used to avoid name class with function name
# initializer must not return anything 	
# self is analogous to 'this' in java or C++

	def number(self):
		return self._number

	def airline(self):
		return self._number[:2] # returning first 2 digit as code of Airline

class Aircraft:
	def __init__(self, registration, model, num_rows, num_seats_per_row):
		self._registration = registration
		self._model = model
		self._num_rows = num_rows
		self._num_seats_per_row = num_seats_per_row

	def registration(self):
		return self._registration

	def model(self):
		return self._model

	def seating_plan(self):
		return (range(1,self._num_rows+1), "ABCDEFGHIJKLMNOPQRSTUVWXYZ"[: self._num_seats_per_row])
		# returning a tuple with a range of numbers and a range of lettes of seats

