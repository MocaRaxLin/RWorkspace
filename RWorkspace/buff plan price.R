file = read.csv("buff plan price.csv")
operator = file$Mobile_operator
price = file$Average_plan_price
group_size = 1:8
maxy = max(price)/min(group_size)
miny = min(price)/max(group_size)

print(operator)
print(price)

# set up the plot
xrange <- range(group_size) 
yrange <- range(miny:maxy)
plot(xrange, yrange, type="n", xlab="Group size (people)",ylab="Cost per person (NTD)" )
colors <- rainbow(length(price))
linetype <- group_size
plotchar <- seq(18,18+length(operator),1)

# add lines
for (i in 1:length(operator)) {
  cost_per_person = price[i]/group_size
  lines(group_size, cost_per_person, type="b", lwd=1.5,
        lty=linetype[i], col=colors[i], pch=plotchar[i]) 
}

# add a title and subtitle
title("Cost for sharing", "")

# add a legend
legend(2.5, yrange[2], operator, cex=0.7, col=colors,
       pch=plotchar, lty=linetype, title="Mobile Operator")

