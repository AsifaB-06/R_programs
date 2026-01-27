#Vectors:
# Stores decimal or whole numbers
numeric_vec <- c(10.5, 5.2, 8.8, 12.0)
cat("--- Numeric Vector ---\n")
print(numeric_vec)
cat("Type:", typeof(numeric_vec), "\n")
cat("Access 3rd element:", numeric_vec[3], "\n\n")
# Stores text or strings
char_vec <- c("Apple", "Banana", "Cherry", "Date")
cat("--- Character Vector ---\n")
print(char_vec)
cat("Access 2nd element:", char_vec[2], "\n\n")
# Stores TRUE or FALSE values
logical_vec <- c(TRUE, FALSE, TRUE, TRUE)
cat("--- Logical Vector ---\n")
print(logical_vec)
cat("Access 1st element:", logical_vec[1], "\n\n")
# Coercion Example: If you mix types, R converts all elements to the most flexible type (e.g.,character)
coerced_vec <- c(10, "hello", TRUE)
cat("--- Coerced Vector (mixed types become character) ---\n")
print(coerced_vec)
cat("Type:", typeof(coerced_vec), "\n")
#LISTS:
# Create a list containing a string, a numeric vector, and a logical value
my_list <- list(
  name = "Project Alpha", # Character element
  scores = c(85, 92, 78, 95), # Numeric vector
  is_active = TRUE, # Logical element
  config = list(version = 2.1, status = "stable") # Nested list
)
cat("--- List Structure ---\n")
print(my_list)
cat("\n")
# Access by index (returns a sub-list)
cat("Access 2nd element (Sub-list):", "\n")
print(my_list[2])
# Access by name using '$' or '[[' (returns the element itself)
cat("\nAccess 'scores' vector using $:", my_list$scores, "\n")
cat("Access 'is_active' value using [[ ]]:", my_list[["is_active"]], "\n")
# Access element within a nested list
cat("Access 'version' from nested list:", my_list$config$version, "\n")
#Data Frame:
# Define vectors for columns
student_names <- c("Amit", "Bala", "Chitra", "Divya")
student_ages <- c(20, 21, 19, 20)
student_majors <- c("CS", "IT", "AIML", "CS")
is_senior <- c(FALSE, TRUE, FALSE, TRUE)
# Create the Data Frame
student_data <- data.frame(
  Name = student_names,
  Age = student_ages,
  Major = student_majors,
  Senior = is_senior,
  stringsAsFactors = FALSE # Recommended setting for modern R coding
)
cat("--- Data Frame Structure (Student Data) ---\n")
print(student_data)
cat("\n")
# --- Inspecting Data Frames ---
# Check the structure (data types of columns)
cat("Structure (str):\n")
str(student_data)
# Get column names
cat("\nColumn Names:", names(student_data), "\n")
# --- Accessing Data Frame Elements ---
# 1. Access a Column (Vector)
cat("\nAccess 'Major' column using $:", student_data$Major, "\n")
cat("Access 'Age' column using [[ ]]:", student_data[["Age"]], "\n")
# 2. Access a Row
cat("\nAccess 3rd Row:\n")
print(student_data[3, ]) # [Row, Column] - empty column part means all columns
# 3. Access a Specific Element (Row 2, Column 1)
cat("\nAccess Element at [2, 1] (Bala):", student_data[2, 1], "\n")
# 4. Filter Rows (Conditional Subset)
cs_students <- student_data[student_data$Major == "CS", ]
cat("\nStudents majoring in CS:\n")
print(cs_students)