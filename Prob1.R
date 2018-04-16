library(lpSolve)
#
# Set up problem: 
#
# max     z = 3 x1 + x2 
# s.t. 
#     x1 - x2  <= -1
#    -x1 - x2  <= -3
#    2x1 + x2  <=  2
#       x1, x2 >= 0
#
#	x3 = -  x1 + x2 - 1 + x0
#	x4 =    x1 + x2 - 3 + x0
#	x5 = -  2x1 -x2 + 2 + x0
#	w  = -  		    x0
#	
#
#
#
#
#

f.obj <- c(3, 1)
f.con <- matrix (c(1, -1, 1, -1, -1, 1, 2, 1, 1), nrow=3, ncol=4)
f.dir <- c("<=", "<=", "<=")
f.rhs <- c(-1, -3, 2)

lp ("max", f.obj, f.con, f.dir, f.rhs)
lp ("max", f.obj, f.con, f.dir, f.rhs)$solution
