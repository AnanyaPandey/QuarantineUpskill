
def gcf(m,n):
	# assume m > n 
	if m<n :
		(m,n) = (n,m)
	
	if m%n == 0 
		return(n)
	else:
		diff = m-n
		# Computing GCF of (n, m-n)
		return(gcf(max(n,diff),min(n,diff) ) )