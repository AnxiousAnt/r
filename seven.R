library(dplyr)
library(ggplot2)

purchase_data <- data.frame(
  CustomerID = c(101, 102, 103, 104, 105),
  PurchaseAmount = c(150, 200, 120, 300, 80)
)

mean_purchase <- mean(purchase_data$PurchaseAmount)
median_purchase <- median(purchase_data$PurchaseAmount)
sd_purchase <- sd(purchase_data$PurchaseAmount)
q1_purchase <- quantile(purchase_data$PurchaseAmount, probs = 0.25)
q3_purchase <- quantile(purchase_data$PurchaseAmount, probs = 0.75)


cat("Mean Purchase Amount:", mean_purchase, "\n")	
cat("Median Purchase Amount:", median_purchase, "\n")	
cat("Standard Deviation of Purchase Amounts:", sd_purchase, "\n")	
cat("1st Quartile of Purchase Amounts:", q1_purchase, "\n")	
cat("3rd Quartile of Purchase Amounts:", q3_purchase, "\n")

hist <- ggplot(purchase_data, aes(x = PurchaseAmount)) + 
  geom_histogram(binwidth = 50, fill = 'blue', color = "black")
print(hist)
