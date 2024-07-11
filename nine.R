data <- data.frame(
  x = rnorm(100),
  y = rnorm(100)
)


scatter <- ggplot(data, aes(x = x, y = y)) + 
  geom_point()
print(scatter)


bar_data <- data.frame(
  categories = c('A', 'B', 'C'),
  values = c(12, 23, 4)
)

bar <- ggplot(bar_data, aes(x = categories, y = values))+
  geom_bar(stat = 'identity', fill = 'green')

print(bar)


line_data <- data.frame(
  x = 1:10, 
  y = 2*(1:10)
)

line <- ggplot(line_data, aes(x, y)) + 
  geom_line(color = 'red')+
  labs(title = 'line plot', x= 'test', y = 'testg')
print(line) 

hist_data <- data.frame(
  x = rnorm(100)
)

hist <- ggplot(hist_data, aes(x)) +
  geom_histogram(binwidth = 0.1)
print(hist)



