# Data for Maintenance in dollars
maintenance <- c(552, 588, 696, 737, 788, 757, 808, 710, 594, 553, 614, 721, 
                 833, 750, 712, 913, 1103, 961, 993, 1076)

# Data for Load Factor in percentages
load_factor <- c(67.6, 69.6, 69.6, 70.1, 68.3, 69.6, 69.4, 71.2, 75.4, 77.7, 
                 80.8, 81.8, 82.6, 82.2, 81.8, 83.0, 84.5, 83.1, 84.4, 85.4)

# Labels (optional, assuming years or periods as labels)
labels <- paste("Period", 1:20)

# Create a pie chart for Maintenance
pie(maintenance, labels = labels, main = "Pie Chart of Maintenance Costs", col = rainbow(length(maintenance)))

# Create a bar chart for Load Factor
barplot(load_factor, names.arg = labels, col = "skyblue", 
        main = "Bar Chart of Load Factor (%)", 
        xlab = "Periods", ylab = "Load Factor (%)", ylim = c(0, 100))

# To show the graphs in the viewer
dev.off()

