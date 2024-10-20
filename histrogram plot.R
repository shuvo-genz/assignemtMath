# Input the 'Salaries and Wages' data
salaries_wages <- c(388, 410, 444, 439, 437, 484, 553, 568, 495, 517, 583, 539, 546, 585, 629, 654, 759, 858, 990, 980)

# Select a sample of size n = 20
set.seed(123)  # Set seed for reproducibility
sample_data <- sample(salaries_wages, 20)

# Print the sampled data for reference
print("Sampled Data:")
print(sample_data)

# Create a histogram using base R without explicitly defining breaks
hist(sample_data,
     main = "Histogram of Salaries and Wages",
     xlab = "Salaries and Wages",
     col = "lightblue",
     border = "black",
     xlim = range(salaries_wages),  # Set limits to the original data range
     breaks = "FD")  # Use 'FD' for Freedman-Diaconis rule for breaks












