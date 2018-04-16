# initial
set.seed(4901)
n=10000  # the number of simulation iterations 
p1=0.8    #P(A)=p1
p2=0.9    #P(B)=p2
p3=0.7    #P(C)=p3
p4=0.6    #P(D|C)=p4
p5=0.5    #P(D|C')=p5
kount=0
# Simulate n runs
for (i in 1:n){
  A=B=C=D=FALSE

  if (runif(1)<p1) A = TRUE 
  if (runif(1)<p2) B = TRUE 
  if (runif(1)<p3) C = TRUE 
  if (C){
	if (runif(1)<p4){ D = TRUE}
	if (runif(1)<p5){D = TRUE}
  }
  if ((A && B && C)|| (A && D)) kount=kount+1
}
phat=kount/n
sd=sqrt(phat*(1-phat)/n)
print(paste("phat=", phat, "sd=", sd))
