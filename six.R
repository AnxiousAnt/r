library(forecast)

sale <- data.frame(
  dates = seq(as.Date('2024-04-05'), as.Date('2024-05-07'), by = 'months'),
  sales = c(123142, 124124, 124555, 121212, 111111, 145555 )
)

sales_ts = ts(sale$sales, frequency = 12)
print(sales_ts)

arima_model <- auto.arima(sales_ts)

result <- forecast(arima_model, h=7)
print(result)