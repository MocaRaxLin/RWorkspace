# ------------------------------------
# Author: Justin Lin at 2015.10.16
# 
# Purpose: for hw2
# 
# ------------------------------------

# 1-A
d = dnorm(9.9, mean=10, sd=0.2)
print(d)

# 1-B
r = rnorm(10^5, 10, 0.2)

# 1-C
n = sum(9.8<=r & r<=10)
p = n/length(r)/0.2     #counting the proportion and divided by the width from 9.8 to 10
print(p)


# 2-A
x = seq(-7, 10, 0.05)
y1 = dnorm(x, 1, 2)
y2 = dnorm(x, 2, 2)
y_sum = (y1+y2)/2
plot(x, y_sum, type='l', col='red')
# lines(x, y1, col='yellow')
# lines(x, y2, col='blue')

# 2-B
yb1 = dnorm(1, 1, 2)
yb2 = dnorm(1, 2, 2)
y_bsum = (yb1+yb2)/2
print(yb1)
print(yb2)
print(yb1/2/y_bsum)

# 2-C
# no code for this part

# 3
# no code for this part