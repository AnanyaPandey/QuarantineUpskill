
import sys

def write_sequence(filename,num):
	with open(filename,mode='rt',encoding='utf-8') as f:
		f.writelines(f"{r}\n " for r in islice(sequence(), num-1) )


# With constructor will always close the file. 
