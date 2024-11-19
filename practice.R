# Load necessary libraries
library(ggplot2)
library(dplyr)

# Custom dataset 1
data <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David", "Eve"),
  Age = c(25, 30, 22, 28, 24),
  City = c("New York", "London", "Paris", "Tokyo", "Sydney"),
  Salary = c(60000, 75000, 55000, 80000, 65000)
)

# Data Summary
summary(data)

# Average salary by city (pre-aggregating data)
city_salary <- data %>%
  group_by(City) %>%
  summarize(mean_salary = mean(Salary))

# Bar plot: Average Salary by City
ggplot(city_salary, aes(x = City, y = mean_salary)) +
  geom_bar(stat = "identity", fill = "steelblue", color = "black") +
  labs(title = "Average Salary by City", x = "City", y = "Average Salary")

# Scatter plot: Age vs Salary
ggplot(data, aes(x = Age, y = Salary, color = City)) +
  geom_point(size = 3) +
  labs(title = "Age vs. Salary", x = "Age", y = "Salary")

# Histogram: Salary Distribution
ggplot(data, aes(x = Salary)) +
  geom_histogram(binwidth = 5000, fill = "steelblue", color = "black") +
  labs(title = "Salary Distribution", x = "Salary", y = "Frequency")