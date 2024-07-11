calculate_fine <- function(days_overdue) {	
  if (days_overdue <= 7) {	
    fine <- 0 # No fine for the first 7 days	
  } else if (days_overdue <= 30) {	
    fine_per_day <- 2 # Fine per day after 7 days	
    fine <- (days_overdue - 7) * fine_per_day	
  } else {	
    fine_cap <- 50 # Maximum fine after 30 days	
    fine <- fine_cap	
  }	
  return(fine)	
}	
# Input number of days overdue	
days_overdue <- as.integer(readline("Enter the number of days the book is overdue: "))	
# Calculate fine	
fine_amount <- calculate_fine(days_overdue)	
# Display fine information	
cat("Fine Amount:", fine_amount, "\n")	
if (fine_amount == 0) {	
  cat("No fine. Thank you for returning the book on time!\n")	
} else {	
  if (days_overdue > 30) {	
    cat("Fine exceeds the maximum cap. Please contact the library.\n")	
  } else {	
    cat("Please pay the fine within the specified period.\n")	
  }	
}	