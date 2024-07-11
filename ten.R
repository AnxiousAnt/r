library(ggplot2)
library(patchwork)
library(plotly)

set.seed(123)
data <- data.frame(
  Date = seq(as.Date('2023-01-01'), as.Date('2023-12-31'), by = 'months'),
  Sales = cumsum(sample(5000:10000, 12, replace = TRUE)),
  Engagement = sample(1:10, 12, replace = TRUE),
  Category = rep(c("Electronics", "clothing", 'books'), each = 4)
)

scatter <- ggplot(data, aes(x = Sales, y = Engagement, color = Category))+
  geom_point()
print(scatter)

bar <- ggplot(data, aes(x = Category, y = Sales, fill = Category))+
  geom_bar(stat = 'identity') 
print(bar)

print(data$Date)
print(data$Sales)
print(data$Engagement)
print(data$Category)
line <- ggplot(data, aes(x = Date, y = Sales, color = Category))+
  geom_line()
print(line)

hist <- ggplot(data, aes(Engagement))+
  geom_histogram(binwidth = 1, fill = 'green')
print(hist)

box_plot <- ggplot(data, aes(Category, Sales, fill = Category))+
  geom_boxplot()
print(box_plot)

pie_data <- data.frame(
  Category = c('electronics', 'clothing', 'books'),
  sales = c(1444, 42, 444)
)

pie <- ggplot(pie_data, aes(x = "", y = sales, fill = Category))+
  geom_bar(stat = 'identity', width = 1)+
  coord_polar('y', start = 0)+
  theme_void()
print(pie)

combined_plots <- pie + 
  box_plot+
  hist+
  line+
  bar+
  scatter
print(combined_plots)

