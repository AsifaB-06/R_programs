# first data frame
df1 <- data.frame(
  ID = c(1, 2, 3),
  Name = c("Arun", "Karthik", "Ravi")
)
# second data frame (for cbind - columns)
df2 <- data.frame(
  Marks = c(85, 90, 88),
  Grade = c("A", "A+", "A")
)
# Join columns using cbind()
column_joined <- cbind(df1, df2)
cat("Data frame after joining columns using cbind():\n")
print(column_joined)
# third data frame (for rbind - rows)
df3 <- data.frame(
  ID = c(4, 5),
  Name = c("Siva", "Kumar"),
  Marks = c(75, 80),
  Grade = c("B", "B+")
)
# Join rows using rbind()
row_joined <- rbind(column_joined, df3)
cat("\nData frame after joining rows using rbind():\n")
print(row_joined)