
def gcf(m,n):
	# assume m > n 
	if m<n :
		(m,n) = (n,m)
	
	while (m%n) != 0 :
		diff = m-n
		(m,n) = (max(n,diff),min(n,diff))
	
	return(n)
	# no of steps proportional to m and n 	