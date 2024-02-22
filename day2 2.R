# Define the dataset
school <- c("A", "A", "A", "B", "B", "B", "C", "C", "C", "D", "D", "D")
grade_level <- c("Grade 1", "Grade 2", "Grade 3", "Grade 1", "Grade 2", "Grade 3",
                 "Grade 1", "Grade 2", "Grade 3", "Grade 1", "Grade 2", "Grade 3")
num_students <- c(25, 30, 20, 22, 28, 18, 20, 25, 15, 28, 32, 24)

# Create a data frame
df <- data.frame(school, grade_level, num_students)

# Adjust plot margins
par(mar = c(2, 2, 2, 2))  # Set the margins (bottom, left, top, right)

# Create a mosaic plot
mosaicplot(num_students ~ school + grade_level, data = df, main = "Number of Students by School and Grade Level")

# Analyze the efficiency
