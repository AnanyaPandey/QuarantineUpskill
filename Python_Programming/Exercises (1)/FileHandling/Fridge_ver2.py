# FRIDGE
# Implementing COntextlib to close the  fridge in case of runtime Error 
from COntextlib import closing

class refgrigrator:
	
	def open(self):
		print("open fridge door")

	def take(self,food):
		print(f"Findnig Food")
		if food == "deep fried pizza":
			raise RuntimeError("Health WARNING!!")
		print(f"taking the {food}")

	def close(self):
		print("Closing Fridge Door")


def raid(food):
	#r = refgrigrator()
	with closing(refgrigrator()) as r:
		r.open()
		r.take(food)
#		r.close() NO need of this explicit Close since our closing() will take care of the closing of file. 
# Even if we run into a runtime waring the Fridge will be closed by the context manager


