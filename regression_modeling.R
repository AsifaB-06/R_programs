library(ggplot2)
data <- data.frame(
  x = c(10, 20, 30, 40, 50),
  y = c(15, 25, 35, 45, 55)
)
print("Data:")
print(data)
model <- lm(y ~ x, data = data)
summary(model)
plot(data$x, data$y, main = "Scatter Plot with Regression Line",
     xlab = "X", ylab = "Y", pch = 19, col = "blue")
abline(model, col = "red")
predicted_y <- predict(model, data)
data$predicted_y <- predicted_y
print("Data with Predictions:")
print(data)
ggplot(data, aes(x = x, y = y)) +
  geom_point(color = "blue") +
  geom_line(aes(y = predicted_y), color = "red") +
  labs(title = "Observed vs. Predicted Values",
       x = "X", y = "Y")