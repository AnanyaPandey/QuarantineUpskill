
class A:
	func1():
		#code1
		#code2
		pass

class BB(A):
	def __init__(self, var1):
		self._var1 = var1

	def var1(self):
		return self._var1

class CC(A):
	def __init__(self, var1):
		self._var1 = var1

	def var1(self):
		return self._var1