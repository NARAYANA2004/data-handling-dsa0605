# Install and load necessary libraries
install.packages(c("ggplot2", "dplyr"))
library(ggplot2)
library(dplyr)

# Data
time_series_data <- data.frame(
  Month = c("January", "February", "March", "April", "May"),
  Sales = c(15000, 18000, 22000, 20000, 23000)
)

# Convert Month column to factor with proper ordering
time_series_data$Month <- factor(time_series_data$Month, levels = c("January", "February", "March", "April", "May"))

# Scatter Plot
scatter_plot <- ggplot(time_series_data, aes(x = Month, y = Sales)) +
  geom_point() +
  labs(title = "Time Series Analysis - Scatter Plot", x = "Month", y = "Sales (in $)")

# Line Graph
line_graph <- ggplot(time_series_data, aes(x = Month, y = Sales, group = 1)) +
  geom_line() +
  labs(title = "Time Series Analysis - Line Graph", x = "Month", y = "Sales (in $)")

# Display the plots
print(scatter_plot)
print(line_graph)

