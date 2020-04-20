
def gcd(m,n):
	fm=[]
	fn=[]
	fc=[]
	for i in range(1,m+1):
		if m%i == 0:
			fm.append(i)
	
	for i in range(1,n+1):
		if n%i == 0:
			fn.append(i)
	
	for i in fm:
		if i in fn:
			fc.append(i)
			
	return(fc[-1])
		
	