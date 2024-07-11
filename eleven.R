library(readr)	
library(dplyr)	
library(ggplot2)	
	
purchase_data <- read_csv("C:/Users/amrut/Desktop/test.csv")	

total_records <- nrow(purchase_data)	
total_customers <- n_distinct(purchase_data$CustomerID)	
cat("Total Number of Records:", total_records, "\n")	
cat("Total Number of Unique Customers:", total_customers, "\n")	

mean_purchase <- mean(purchase_data$PurchaseAmount)	
median_purchase <- median(purchase_data$PurchaseAmount)	
sd_purchase <- sd(purchase_data$PurchaseAmount)	
cat("Mean Purchase Amount:", mean_purchase, "\n")	
cat("Median Purchase Amount:", median_purchase, "\n")	
cat("Standard Deviation of Purchase Amounts:", sd_purchase, "\n")	
# Task 4: Customer Segmentation (Based on Quartiles)

q1_purchase <- quantile(purchase_data$PurchaseAmount, probs = 0.25)	
q2_purchase <- quantile(purchase_data$PurchaseAmount, probs = 0.5)	
q3_purchase <- quantile(purchase_data$PurchaseAmount, probs = 0.75)	
purchase_data <- purchase_data %>%	
  mutate(Segment = case_when(	
    PurchaseAmount < q1_purchase ~ "Low Spender",	
    PurchaseAmount >= q1_purchase & PurchaseAmount < q3_purchase ~ "Medium Spender",	
    PurchaseAmount >= q3_purchase ~ "High Spender"	
  ))
a <- ggplot(purchase_data, aes(x = PurchaseAmount)) +	
  geom_histogram(binwidth = 5, fill = "blue", color = "black") +	
  labs(title = "Distribution of Purchase Amounts", x = "Purchase Amount", y = "Frequency")	
# Task 6: Visualize Relationship (Scatter Plot)	
b <- ggplot(purchase_data, aes(x = CustomerID, y = PurchaseAmount)) +	
  geom_point(color = "green") +	
  labs(title = "Customer Purchase Amounts", x = "Customer ID", y = "Purchase Amount")	
print(a)
print(b)

# Save the visualizations as image files	
#ggsave("purchase_histogram.png", width = 8, height = 6)	
#ggsave("customer_purchase_scatter.png", width = 8, height = 6)	
