# Install and load necessary libraries
install.packages("ggplot2")
library(ggplot2)

# Data
analytics_data <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04", "2023-01-05")),
  Page_Views = c(1500, 1600, 1400, 1650, 1800),
  Click_through_Rate = c(2.3, 2.7, 2.0, 2.4, 2.6)
)

# Stacked Bar Chart
bar_chart <- ggplot(analytics_data, aes(x = Date, y = Page_Views, fill = factor(Click_through_Rate))) +
  geom_bar(stat = "identity") +
  labs(title = "Website Analytics - Stacked Bar Chart", x = "Date", y = "Page Views")

# Line Plot
line_plot <- ggplot(analytics_data, aes(x = Date, y = Page_Views, group = 1)) +
  geom_line() +
  labs(title = "Website Analytics - Line Plot", x = "Date", y = "Page Views")

# Scatter Plot
scatter_plot <- ggplot(analytics_data, aes(x = Date, y = Page_Views)) +
  geom_point() +
  labs(title = "Website Analytics - Scatter Plot", x = "Date", y = "Page Views")

# Pie Chart
pie_chart <- ggplot(analytics_data, aes(x = "", y = Page_Views, fill = factor(Click_through_Rate))) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  labs(title = "Website Analytics - Pie Chart")

# Histogram
histogram <- ggplot(analytics_data, aes(x = Page_Views)) +
  geom_histogram(binwidth = 200, fill = "blue", color = "black") +
  labs(title = "Website Analytics - Histogram", x = "Page Views", y = "Frequency")

# Display the plots
print(bar_chart)
print(line_plot)
print(scatter_plot)
print(pie_chart)
print(histogram)

