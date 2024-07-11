products <- list(	
  list(name = "Apple", price = 0.5),	
  list(name = "Banana", price = 0.3),	
  list(name = "Milk", price = 2),	
  list(name = "Bread", price = 1.5),	
  list(name = "Eggs", price = 2.5)	
)	

shopping_cart <- list()

cart_items_to_add <- list(	
  list(name = "Apple", quantity = 3),	
  list(name = "Milk", quantity = 2)	
)	

for (item in cart_items_to_add){
  product_name <- item$name
  quantity <- item$quantity
  
  product <- NULL
  for (p in products){
    if(p$name == product_name){
      product <- p
      break
    }
  }
  
  if (!is.null(product)){
    cart_item <- list(name = product$name, price = product$price, quantity = quantity)
    shopping_cart <- c(shopping_cart, list(cart_item))
    cat("Item successfully added to cart.\n")
  }else{
    cat("Product not found")
  }
}

subtotal <- 0
cat('\nReceipt:\n')
for (item in shopping_cart){
  item_subtotal <- item$price*item$quantity
  cat(sprintf('%s(%d units) - price: $%.2f - subtotal: $%.2f\n',item$name, item$quantity, item$price, item_subtotal))
  subtotal <- subtotal + item_subtotal
}

tax_rate <- 0.08

tax_amount <- subtotal*tax_rate
total_cost <- subtotal + tax_amount

sprintf('Subtotal: %.2f', subtotal)
cat('Tax Amount(8%):', tax_amount)
cat('Total Cost: ', total_cost)




