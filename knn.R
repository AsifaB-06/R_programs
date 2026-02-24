# Load necessary libraries
installed.packages("caret")
# or Goto Tools -> Install packages -> caret -> install
library(caret)
library(class)
library(ggplot2)
# Load data
data("PlantGrowth")
str(PlantGrowth)
head(PlantGrowth)
# Ensure group is a factor
PlantGrowth$group <- as.factor(PlantGrowth$group)
set.seed(123)
# Fix: removed the semicolon in <;-
trainIndex <- createDataPartition(PlantGrowth$group, p = 0.7, list = FALSE)
# Split the data
trainData <- PlantGrowth[trainIndex, ]
testData <- PlantGrowth[-trainIndex, ]
# Fix: replaced curly quotes with straight quotes
trainX <- trainData[, "weight", drop = FALSE]
trainY <- trainData$group
testX <- testData[, "weight", drop = FALSE]
testY <- testData$group
set.seed(123)
# Run KNN
knn_pred <- knn(train = trainX, test = testX, cl = trainY, k = 3)
# Evaluate the model
# Note: knn_pred must be compared against testY
conf_matrix <- confusionMatrix(knn_pred, testY)
print(conf_matrix)
# Visualization
ggplot(PlantGrowth, aes(x = group, y = weight, color = group)) +
  geom_point(size = 3) +
  labs(title = "Plant Growth Dataset: Group Vs. Weight",
       x = "Group", y = "Weight") +
  theme_minimal()