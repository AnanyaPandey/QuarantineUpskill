

class Flight:

	def __init__(self,number):
		if not number[:2].isalpha():
			raise ValueError(f"No Airline Code in {number}")
		if not number[:2].isupper():
			raise ValueError(f"No Airline Code is in upper Case : {number}")
		if not number[2:].isdigit() and int(number[2:])	<= 9999:
			raise ValueError(f"Invalid Route Number, should be 4 dinits {number}")
		self._number = number 

# by python convention, implementation details start with _ undescore
# _number is used to avoid name class with function name
# initializer must not return anything 	
# self is analogous to 'this' in java or C++

	def number(self):
		return self._number

	def airline(self):
		# first two difits are airline code. 
		return self._number[:2]

# 	if there are no initialiser this function must be used. 
# 	def number(self):
#		return "6E-1406"
