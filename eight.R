a <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, ncol = 3, byrow = TRUE)
b <- matrix(c(9, 8, 7, 6, 5, 4, 3, 2, 1), nrow = 3, ncol = 3, byrow = TRUE)

sum_mat <- a + b
print(sum_mat)

diff_mat <- a - b
print(diff_mat)

scaled <- a*2
print(scaled)

matmul <- a%*%b
print(matmul)

transpose <- t(a)
print(transpose)

sum_a <- sum(a)
mean_a <- mean(a)
sd_a <- mean(a)


print(sum_a)
print(mean_a)
print(sd_a)



library(ggplot2)
library(reshape2)

heatmap_data <- melt(a)
print(heatmap_data)
heatmap <- ggplot(heatmap_data, aes(x = Var1, y = Var2, fill = value))+
  geom_tile()+
  #scale_fill_gradient(low = "white", high = "blue")+
  labs(title = "heatmap of a")
print(heatmap)

rowsumb = rowSums(b)
rownameb = paste("row", 1:3)

barplot_data = data.frame(
  Row = rownameb,
  Sum = rowsumb
)

bar <- ggplot(barplot_data, aes(x = Row, y = Sum))+
  geom_bar(stat = 'identity', fill = 'red')+
  labs(title = 'bar plot', x = 'row names', y = 'row sums')
print(bar)

