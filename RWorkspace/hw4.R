# ------------------------------------
# Author: Justin Lin at 2015.11.19
# 
# Purpose: for hw4
# 
# ------------------------------------

source("DBDA2E-utilities.R")
openGraph(width=5,height=7.5)
layout( matrix(1:6,nrow=3) )
par(mar=c(4,4,3,1),mgp=c(2,0.7,0))
maxLag=10
for ( inert in c(0.99,0.80) ) {
  # produce MCMC chain x and normalize it
  x = rep(0,500)
  for ( i in 2:length(x) ) {
    x[i] = inert*x[i-1] + rnorm(1,0,1-inert)
  }
  x = (x-mean(x))/sd(x)
  
  # print the trace plot
  plot( x , ylab="x" , cex.lab=1.5 , type="l" )
  
  # plot the scatterplot with 10 steps ahead
  plot( x[1:(500-maxLag)] , x[(maxLag+1):500] ,
        xlab = bquote("x[i]") , ylab=bquote("x[i+"*.(maxLag)*"]") ,
        cex.lab = 1.5 , cex.main = 1.5 ,
        main=bquote(r==.(round(cor(x[1:(500-maxLag)],x[(maxLag+1):500]),2))) )
  
  # show the ACF in lags from 0 to 12 with the bar graph
  acfInfo = acf( x , lag.max=maxLag+2 , main="" )
  title(main=bquote("acf["*.(maxLag)*"]="*.(round(acfInfo$acf[maxLag+1],2)) ) , cex.main=1.5 )
  
  # point out the value of 10-ahead ACF
  points( maxLag , acfInfo$acf[maxLag+1] , cex=2 , lwd=3 ) 
}

