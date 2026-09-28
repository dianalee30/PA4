# Name: Diana Lee
# Course: COP2073C – Programming Assignment 4
# Date: September 27, 2026
# Description: Reproduce Section 7.3 steps 1–10 final plot


# Vectors provided in the assignment
x <- 1:20
y <- c(-1.49,3.37,2.59,-2.78,-3.94,-0.92,6.43,8.51,3.41,-8.23,
       -12.01,-6.58,2.87,14.12,9.63,-4.58,-14.78,-11.67,1.17,15.62)

# Step 1: Basic plot
plot(x, y, type = "p", pch = 16, col = "black",
     main = "Final Plot of Hypothetical Data",
     xlab = "Index", ylab = "Value")

# Step 2: Add a line connecting the points
lines(x, y, col = "gray40", lwd = 1.5)

# Step 3: Add a horizontal reference line at y = 0
abline(h = 0, col = "blue", lwd = 2)

# Step 4: Add a vertical reference line at x = 10
abline(v = 10, col = "red", lwd = 2)

# Step 5: Add text label near the highest point
max_index <- which.max(y)
text(x[max_index], y[max_index] + 2, labels = "Peak", col = "darkgreen")

# Step 6: Add text label near the lowest point
min_index <- which.min(y)
text(x[min_index], y[min_index] - 2, labels = "Valley", col = "purple")

# Step 7: Add a regression line
model <- lm(y ~ x)
abline(model, col = "orange", lwd = 2, lty = 2)

# Step 8: Add points highlighting positive values
pos_index <- which(y > 0)
points(x[pos_index], y[pos_index], pch = 17, col = "darkred")

# Step 9: Add points highlighting negative values
neg_index <- which(y < 0)
points(x[neg_index], y[neg_index], pch = 15, col = "darkblue")

# Step 10: Add legend (scaled with cex = 0.5)
legend("topleft",
       legend = c("Original points", "Connecting line", "y=0 line",
                  "x=10 line", "Regression line", "Positive values",
                  "Negative values"),
       col = c("black", "gray40", "blue", "red", "orange",
               "darkred", "darkblue"),
       pch = c(16, NA, NA, NA, NA, 17, 15),
       lty = c(NA, 1, 1, 1, 2, NA, NA),
       lwd = c(NA, 1.5, 2, 2, 2, NA, NA),
       cex = 0.5)
