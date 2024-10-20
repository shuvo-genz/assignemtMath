# Load the dataset
data <- read.csv("path/to/United Airlines Aircraft Operating Statistics- Cost Per Block Hour (Unadjusted).csv")

# View the structure of the dataset to find the "Salaries and Wages" column
str(data)

# Print column names to identify the correct one
print(colnames(data))

# Replace 'Salaries.and.Wages' with the actual column name as needed
salaries_col <- "Salaries.and.Wages" # Change this if needed

# Check if the column exists
if (!salaries_col %in% colnames(data)) {
  stop("Column 'Salaries.and.Wages' not found in the dataset.")
}

# Set the seed for reproducibility
set.seed(123)

# Sample size
n <- 20

# Check for NA values in the selected column
if (sum(is.na(data[[salaries_col]])) > 0) {
  cat("Warning: There are NA values in the column. These will be removed for the sample.\n")
}

# Select a random sample of Salaries and Wages, removing NA values
sample_data <- sample(na.omit(data[[salaries_col]]), size = n, replace = TRUE)

# Compute the required statistics
mean_value <- mean(sample_data)
median_value <- median(sample_data)
mode_value <- as.numeric(names(sort(table(sample_data), decreasing = TRUE)[1]))
std_dev <- sd(sample_data)
variance_value <- var(sample_data)
quartiles <- quantile(sample_data)
ninth_decile <- quantile(sample_data, 0.9)
tenth_percentile <- quantile(sample_data, 0.1)
data_range <- range(sample_data)

# Print the results
cat("Mean:", mean_value, "\n")
cat("Median:", median_value, "\n")
cat("Mode:", mode_value, "\n")
cat("Standard Deviation:", std_dev, "\n")
cat("Variance:", variance_value, "\n")
cat("Quartiles:", quartiles, "\n")
cat("9th Decile:", ninth_decile, "\n")
cat("10th Percentile:", tenth_percentile, "\n")
cat("Range:", data_range, "\n")

# Interpretation
# You can add your interpretation here based on the printed results.


