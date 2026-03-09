# -----------------------------------------
# K-MEANS CLUSTERING PROGRAM IN R
# -----------------------------------------

# Step 1: Create sample student dataset
students <- data.frame(
  Student_ID = 1:10,
  Marks = c(45, 50, 48, 85, 90, 88, 60, 65, 62, 95),
  Study_Hours = c(2, 3, 2.5, 7, 8, 7.5, 4, 5, 4.5, 9)
)

cat("Original Dataset:\n")
print(students)

# Step 2: Select numeric columns for clustering
cluster_data <- students[, c("Marks", "Study_Hours")]

# Step 3: Set seed for reproducibility
set.seed(123)

# Step 4: Apply K-Means algorithm with 3 clusters
kmeans_model <- kmeans(cluster_data, centers = 3)

# Step 5: Display cluster assignments
cat("\nCluster assigned to each student:\n")
print(kmeans_model$cluster)

# Step 6: Add cluster results to dataset
students$Cluster <- kmeans_model$cluster
cat("\nDataset with Cluster Information:\n")
print(students)

# Step 7: Plot clusters
plot(cluster_data$Marks, cluster_data$Study_Hours,
     col = kmeans_model$cluster,
     pch = 19,
     main = "K-Means Clustering of Students",
     xlab = "Marks",
     ylab = "Study Hours")

# -----------------------------------------
# END OF PROGRAM
# -----------------------------------------