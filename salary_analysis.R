# Input the 'Salaries and Wages' data (replace with your dataset or use an actual file import)
salaries_wages <- c(388, 410, 444, 439, 437, 484, 553, 568, 495, 517, 583, 539, 546, 585, 629, 654, 759, 858, 990, 980)

# Select a sample of size n = 20
set.seed(123)  # Set seed for reproducibility
sample_data <- sample(salaries_wages, 20)

# Define class intervals (adjust as needed)
class_intervals <- seq(floor(min(sample_data)), ceiling(max(sample_data)), by=50)

# Create frequency distribution
frequency_dist <- cut(sample_data, breaks=class_intervals, right=FALSE)
freq_table <- table(frequency_dist)

# Print the frequency distribution
print(freq_table)

# Plot the frequency distribution using base R (barplot)
barplot(freq_table, 
        col="lightblue", 
        main="Frequency Distribution of Salaries and Wages", 
        xlab="Salary Range", 
        ylab="Frequency", 
        border="black", 
        las=2)  # las=2 makes the x-axis labels perpendicular for better readability

