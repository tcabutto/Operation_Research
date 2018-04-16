set.seed(4901)
n=10000 #num of iterations
x<-1:n
for(i in 1:n)
{
	# shuffling 52 cards:
	I<-1:52
	I=sample(rbinom(52,1,0.5))
	#counting adjacent two-red-card pairs:
	j<-1:51
	x[i]=sum(I[j]*I[j+1])
}
mean(x)

