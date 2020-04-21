# Recamman Reader

import sys
def read_series(filename):
	try:
		series = [] # list
		f = open(filename,mode='rt',encoding = 'utf-8')
#		return [int(line.strip()) for line in f]
# 		We can use the above list comprehension instead of tht for loop.
		for lin in f:
			a = int(lin.strip())
			series.append(a)
	except ValueError:
		pass

	finally:
		f.close()
	return series

def main(filename):
	series = read_series(filename)
	print(series)

if __name__ == '__main__':
	main(filename = sys.argv[1])