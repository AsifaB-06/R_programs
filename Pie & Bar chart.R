labels <- c("Category A", "Category B", "Category C", "Category D")
values <- c(25, 30, 20, 25)
pie(values, labels, main="Pie Chart Example", col=rainbow(length(labels)))
legend("topright", legend=labels, fill=rainbow(length(labels)))
categories <- c("Category A", "Category B", "Category C", "Category D")
values <- c(25, 30, 20, 25)
barplot(values, names.arg=categories, main="Bar Chart Example", col="blue",
        xlab="Categories", ylab="Values", ylim=c(0, max(values) + 10))
text(x = barplot(values, names.arg=categories, col="blue", add=TRUE),
     y = values, label = values, pos = 3, cex = 0.8, col = "black")