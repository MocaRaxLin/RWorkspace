# ------------------------------------
# Author: Justin Lin at 2015.11.4
# 
# Purpose: for hw3
# 
# ------------------------------------
source("DBDA2E-utilities.R")
source("BernBeta.R")

openGraph(width=5,height=7)

#part 3-A
post = BernBeta( priorBetaAB=c(0.01,0.01),Data=c(rep(1,63),rep(0,97-63)),
                 showHDI=TRUE , showCentTend="Mode" )
saveGraph(file="01",type="png")

#part 3-B
post = BernBeta( priorBetaAB=c(1,1),Data=c(rep(1,63),rep(0,97-63)),
                 showHDI=TRUE , showCentTend="Mode" )
saveGraph(file="02",type="png")

#part 3-C
post = BernBeta( priorBetaAB=c(2,4),Data=c(rep(1,63),rep(0,97-63)),
                 showHDI=TRUE , showCentTend="Mode" )
saveGraph(file="03",type="png")


