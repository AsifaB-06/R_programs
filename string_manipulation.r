my_string <- "R is a powerful tool for data analysis and statistical computing."
name_vector <- c("Alice", "Bob Smith", "Charlie Brown", "DAVID")
cat("--- 1. Initial Strings ---\n")
print(my_string)
print(name_vector)
# string length: counts the number of characters in each string
string_length <- nchar(my_string)
vector_lengths <- nchar(name_vector)
cat("\n--- 2. Length Functions ---\n")
cat("Length of my_string:", string_length, "\n")
cat("Lengths of name_vector elements:", vector_lengths, "\n")
# Convert strings to uppercase
upper_case <- toupper(name_vector)
# Convert strings to lowercase
lower_case <- tolower(name_vector)
cat("\n--- 3. Case Manipulation ---\n")
cat("Uppercase:", upper_case, "\n")
cat("Lowercase:", lower_case, "\n")
# Extract characters from index 1 to 10 of the first string
substring_extract <- substr(my_string, start = 1, stop = 10)
# The 'substring' function works similarly
substring_by_index <- substring(my_string, 12, 21)
cat("\n--- 4. Substring Extraction ---\n")
cat("Substr (1 to 10):", substring_extract, "\n")
cat("Substring (12 to 21):", substring_by_index, "\n")
# Concatenate strings together with a separator (default is space)
combined_string <- paste("The total length is:", string_length, "characters.")
# Concatenate strings without any separator
no_space_combine <- paste0(name_vector, "X")
# Concatenate vector elements into a single string using a specific separator
joined_names <- paste(name_vector, collapse = " | ")
cat("\n--- 5. Concatenation and Joining ---\n")
cat("Combined String:", combined_string, "\n")
cat("No Space Combine:", no_space_combine, "\n")
cat("Joined Names:", joined_names, "\n")
search_text <- "data analysis"
# Check if a pattern is present (returns TRUE/FALSE)
# 'grepl' stands for 'grep logical'
is_present <- grepl(search_text, my_string)
# Find the starting position of the first match (returns the index)
start_position <- regexpr(search_text, my_string)
cat("\n--- 6. Searching and Matching ---\n")
cat("Is 'data analysis' present?", is_present, "\n")
cat("Starting position of 'data analysis':", start_position, "\n")
# Split the main string into a list of words using space (" ") as the delimiter
split_words <- strsplit(my_string, split = " ")[[1]]
# Split a date string
date_string <- "2025-12-09"
split_date <- strsplit(date_string, split = "-")[[1]]
cat("\n--- 7. Splitting Strings ---\n")
cat("Split Words (vector):", split_words, "\n")
cat("Split Date (vector):", split_date, "\n")
# Replace the first occurrence of "data" with "big data"
# 'sub' replaces only the first match
replaced_once <- sub("data", "big data", my_string)
# Replace ALL occurrences of "statistical" with "numerical"
# 'gsub' replaces all matches ('g' stands for 'global')
replaced_all <- gsub("statistical", "numerical", my_string)
cat("\n--- 8. Replacing Substrings ---\n")
cat("Replaced Once (sub):", replaced_once, "\n")
cat("Replaced All (gsub):", replaced_all, "\n")
# Removing leading/trailing white spaces
text_with_spaces <- " Trim Me! "
trimmed_text <- trimws(text_with_spaces)
cat("\n--- 9. Trimming Spaces ---\n")
cat("Original (with spaces): '", text_with_spaces, "'\n", sep="")
cat("Trimmed (trimws): '", trimmed_text, "'\n", sep="")