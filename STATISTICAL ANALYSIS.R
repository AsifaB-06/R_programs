set.seed(123)
n <- 100
data <- data.frame(
  ID = 1:n,
  Height = rnorm(n, mean = 168, sd = 10),
  Weight = rnorm(n, mean = 70, sd = 15),
  Age = sample(18:60, n, replace = TRUE),
  Gender = sample(c("Male", "Female"), n, replace = TRUE)
)
# Display first few records
head(data)
# Summary statistics
summary(data)
# Group wise summary using base R
aggregate(data[, c("Height", "Weight", "Age")],
          by = list(Gender = data$Gender),
          FUN = mean)
aggregate(data[, c("Height", "Weight", "Age")],
          by = list(Gender = data$Gender),
          FUN = sd)