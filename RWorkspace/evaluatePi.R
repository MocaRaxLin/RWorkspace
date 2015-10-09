# ------------------------------------
# Author: Justin Lin at 2015.09.28
# 
# Purpose: To evaluate pi with the ratio of the points in the circle to all the points
# Method : using addition 10^1 + 9*10^1 + 9*10^2 + 9*10^3 + 9*10^4 + 9*10^5 +9*10^6 + 9*10^7 to generate random points to accelerate computing
# 
# ------------------------------------

# pi storage for number of points 10^1 to 10^8
pi = c(1:8)

# generate 10^1 random numbers
N = 10^1
x = runif(N, -1,1)
y = runif(N, -1,1)

#count the number n for points in the circle
r = x^2+y^2
n = sum(r <= 1)
pi[1] = 4*n/N


# generate N from 10^2 to 10^8 random numbers and evaluate pi
for(h in 1:7){
  x = runif(9*10^h, -1,1)
  y = runif(9*10^h, -1,1)
  r = x^2+y^2
  s = sum(r <= 1)
  n = n + s
  N = N + 9*10^h
  pi[h+1] = 4*n/N
}

# plot line graph and print pi
print(pi)
exp = c(1:8)
plot(exp, pi, type = "o", col= "blue")

