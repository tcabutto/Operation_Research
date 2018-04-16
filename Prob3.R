start_time <- Sys.time()
set.seed(4901)
n=10000 #num of iterations
x1 <- 1:n
x2 <- 1:n

for(i in 1:n)
{
	#Step 1
	v1= (2 * runif(1))-1
	v2= (2 * runif(1))-1
	w= v1^(2)+ v2^(2)
  
	#Step 2
	while(w > 1)
	{
    		v1= 2 * runif(1)-1
    		v2= 2 * runif(1)-1        
    		w= v1^(2)+ v2^(2)
  	}
  
	x1[i] = v1 * sqrt((-2*log(w))/w )
	x2[i] = v2 * sqrt((-2*log(w))/w )
  
}
#Display histograms of x1 and x2:
hist(x1)
hist(x2)

mean(x1) #mean of x1:

mean(x2) #mean of x2:

sd(x1) #Standard deviation of x1:

sd(x2) #Standard deviation of x2:

cov(x1, x2) #Negative covariance, which means they are not independent

end_time <- Sys.time()
end_time - start_time
