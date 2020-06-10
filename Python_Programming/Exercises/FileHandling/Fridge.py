# FRIDGE

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
	r = refgrigrator()
	r.open()
	r.take(food)
	r.close()
