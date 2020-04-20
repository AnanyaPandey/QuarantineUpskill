
def gcf(m,n):
	# assume m > n 
	if m<n:
		(m,n) = (n,m)
	if m%n == 0:
		return(n)
	else:
		r=m%n
		return(gcf(n,r))	
		
	# Efficiency or no of steps depend on number of digits.