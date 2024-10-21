# Data for Purchased Goods, Aircraft Ownerships, and Daily Utilization per Aircraft

purchased_goods <- c(563, 693, 665, 572, 544, 769, 796, 652, 770, 981, 
                     1384, 1633, 1681, 2726, 1357, 1858, 2335, 2583, 
                     2410, 2297)

aircraft_ownership <- c(445, 411, 387, 396, 408, 444, 485, 512, 399, 358, 
                        315, 366, 391, 414, 435, 379, 229, 295, 280, 293)

block_hours <- c(9.28, 9.40, 9.59, 9.78, 9.95, 9.85, 9.22, 8.96, 9.00, 9.81, 
                 10.36, 10.57, 10.65, 9.96, 10.23, 10.46, 10.39, 10.01, 10.07, 9.65)

airborne_hours <- c(7.75, 7.88, 8.01, 8.17, 8.24, 8.10, 7.67, 7.51, 8.26, 8.21, 
                    8.75, 10.21, 10.69, 9.97, 10.26, 10.50, 10.42, 10.03, 10.11, 9.66)

departures <- c(4.83, 4.76, 4.81, 4.77, 4.71, 4.57, 4.21, 4.01, 3.78, 3.97, 
                4.04, 4.17, 4.21, 3.97, 4.11, 4.04, 3.82, 3.49, 3.44, 3.31)

# Calculate average daily utilization per aircraft
daily_utilization <- rowMeans(cbind(block_hours, airborne_hours, departures))

# Combine all the data into a dataframe
data <- data.frame(
  Purchased_Goods = purchased_goods,
  Aircraft_Ownership = aircraft_ownership,
  Daily_Utilization = daily_utilization
)

# Plot the box plots
boxplot(data, 
        main = "Box Plot for Purchased Goods, Aircraft Ownerships, and Daily Utilization per Aircraft",
        col = c("lightblue", "lightgreen", "red"),
        ylab = "Values",
        names = c("Purchased Goods", "Aircraft Ownerships", "Daily Utilization"))

