# x=c("a","aa","bs","bs","ba")
# xf=factor(x)
# print(xf)
# n = as.numeric(xf)
# print(n)
# xfol = factor( x , levels=c("a","bb","ba") , ordered=TRUE ,labels=c("Bottom SES","Middle SES","Top SES") )
# print(xfol)

# x = matrix(1:5, ncol = 4, byrow = TRUE)
# print(x)
# print(x[4])

# x = matrix( 1:6 , nrow=2 ,
#             dimnames=list( TheRowDimName=c("Row1Name","Row2Name") ,
#             TheColDimName=c("Col1Name","Col2Name", "Col3Name") ) )
# print(x)

# d = data.frame( Integers=1:3 , NumberNames=c("one","two","three") )
# print(d)
# print(d$NumberNames) # notice this is a factor
# print(d[[2]]) # the second element contents
# print(d[2]) # the second element with its name

# MyList = list( "a"=1:3 , "b"=matrix(1:6,nrow=2) , "c"="Hello, world." )
# print(MyList)

# a = array( 1:24 , dim=c(3,4,2) , # 3 rows, 4 columns, 2 layers
#                   dimnames = list( RowDimName = c("R1","R2","R3") ,
#                   ColDimName = c("C1","C2","C3","C4") ,
#                   LayDimName = c("L1","L2") ) )
# print(a)

# x = c( rep(1,100) , rep(2,200) , rep(3,300) ) # 100 1??s, 200 2??s, 300 3??s
# print(summary(x))
# xf = factor(x)
# print(summary(xf))

# HGNdf = read.csv("HGN.csv")
# a = aggregate( x=HGNdf$Number , by=list(HGNdf$Gender,HGNdf$Hair) , FUN=median )
# b = aggregate( Number ~ Gender + Hair , data=HGNdf , FUN=median )
# # a = b
# c = aggregate( x=list(Count=rep(1,NROW(HGNdf))) , # column of 1??s
#               by=list(Gender=HGNdf$Gender,Hair=HGNdf$Hair) , FUN=sum )
# # print(a)
# # print(b)
# print(c)
# 
# d = table(list(Gender=HGNdf$Gender,Hair=HGNdf$Hair))
# print(d)

# a = 1:20
# h = head(a,3)
# print(h)
# t = tail(t,3)
# print(t)

# rout=sample(0:1,size=1,prob=c(19/37,18/37),replace=T)
# print(rout)
# rout=sample(0:1,size=1000,prob=c(19/37,18/37),replace=T)
# plot(rout)



