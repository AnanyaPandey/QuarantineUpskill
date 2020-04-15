# -*- coding: utf-8 -*-
"""
Created on Tue Apr 14 15:21:07 2020

@author: pandey
"""
'''
def make_flight():
    # Now we will create a nodule level convenient function to create the flight
	f = Flight("ABCD", aircraft("Some Reg","Boing 99", 17,9))		
	f.allocate_seat("10A", "Ralph Waldo Emerson")
	f.allocate_seaat("12C", "Baba Ganuj")
	f.allocate_seaat("11C", "Amaratya Sen")
	f.allocate_seaat("7C", "Rockstar Vijay")
	f.allocate_seaat("3B", "Sachin Tendulkar")
	f.allocate_seaat("1A", "Ricky Ponting")
	f.allocate_seaat("1C", "Philip Lahm")
	f.allocate_seaat("1B", "Vicky Behl")
	f.allocate_seaat("11D", "Anamika")
	return f
'''
class Flight:
    def __init__(self,number,aircraft):
        self._number = number
        self._aircraft = aircraft
        rows, seats = self._aircraft.seating_plan() # Fnction returns range and alphabet range
        self._seating =  [None] + [{letter: None for letter in seats} for i in rows] # for each row for each set assing none 
        # Basically creating empty seats None specifies no one is sitting on it.
        # Above is a dictionary comprehension creates key: value combination


    def aircraft_model(self):
        return self._aircraft.model()

    def aircraft_registration(self):
        return self._aircraft.registration()
    
    def allocate_seat(self,seat,passenger): 
        row, letter = self._parse_seat(seat)
        self._seating[row][letter] = passenger
    
    def _parse_seat(self, seat):
        rows, seat_letters = self._aircraft.seating_plan()
        row_text = seat[:-1]
        row = int(row_text)
        letter = seat[-1]
        if row not in rows:
            raise ValueError(f"Invalid Row Number {row}")
        if letter not in seat_letters:
            raise ValueError("Invalied letter for seat")
        if self._seating[row][letter] is not None:
            raise ValueError(f"Seat {seat} already occupied")
        return row, letter
    def num_available_seats(self):
        return sum(sum(1 for s in row.values() if s is None ) for row in self._seating if row is not None)
    # Two loops, for each row in seating, for each seat in row 
    
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

##########################################3# COMPLEX IS BETTER THAN COMPLICATED ###################################################



