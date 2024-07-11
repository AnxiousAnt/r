# Constants	
num_students <- 5	
num_courses <- 5	
# Predefined student names	
student_names <- c("Arun Rahul", "Bheem Kumar","Raj jumar","Jahal A R","Suresh")	
# Predefined course marks for each student	
course_marks <- matrix(c(	
  85, 92, 78, 88, 95,	
  75, 80, 85, 70, 60,	
  100,78,56,34,56,	
  78,45,67,89,90,	
  89,80,67,78,90	
), nrow = num_students, byrow = TRUE)	
# Initialize a list to store student information	
student_records <- list()	
# Loop for each student	
for (student_index in 1:num_students) {	
  student_name <- student_names[student_index]	
  # Initialize variables for calculations	
  total_marks <- sum(course_marks[student_index, ])	
  average_marks <- total_marks / num_courses	
  # Determine grade based on average marks	
  grade <- ifelse(average_marks >= 90, "A",	
                  ifelse(average_marks >= 80, "B",	
                         ifelse(average_marks >= 70, "C",	
                                ifelse(average_marks >= 60, "D", "F"))))	
  # Store student information in a record	
  student_record <- list(name = student_name, marks = course_marks[student_index, ],	
                         total = total_marks, average = average_marks, grade = grade)	
  student_records <- c(student_records, list(student_record))	
}	

# Display student information	
cat("\nStudent Grade Report:\n")	
for (student_record in student_records) {	
  cat("\nName:", student_record$name, "\n")	
  cat("Marks:", student_record$marks, "\n")	
  cat("Total Marks:", student_record$total, "\n")	
  cat("Average Marks:", student_record$average, "\n")	
  cat("Grade:", student_record$grade, "\n")	
}