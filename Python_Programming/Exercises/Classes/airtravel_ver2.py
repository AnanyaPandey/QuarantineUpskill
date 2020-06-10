# -*- coding: utf-8 -*-
"""
Created on Tue Apr 14 15:21:07 2020

@author: pandey
"""

class Flight:
    def __init__(self,number,aircraft):
        self._number = number
        self._aircraft = aircraft

    def aircraft_model(self):
		return self._aircraft.model()

 	def aircraft_registration(self):
 		return self._aircraft.registration()

# by python convention, implementation details start with _ undescore
# _number is used to avoid name class with function name
# initializer must not return anything 	
# self is analogous to 'this' in java or C++

    def number(self):
        return self._number

    def airline(self):
        return self._number[:2] # returning first 2 digit as code of Airline

class aircraft:
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

# seating plan function is not to be used by the application we are constructing
# we have toll now created the seating plan in below manner.
# After we inintialize :  A1 = Aircraft("G-P2t01", "Boing 707", 31, 6)
# Notice that it has created a Tuple (range(1, 32), 'ABCDEF') 

# we can directly initialize it while creating the flight
# >>> from airtravel import * 
# >>> F2 = Flight("6E-1923", aircraft("T-2F34","Airbus 1869", 22,9))
# >>> F2.aircraft_model()
# 'Airbus 1869'
#
# This is called collaboration of classes.
# Here it isnt required to access the aircraft directly. 
# If we dont use this we need to creae/ Iniitalize an aircraft 






