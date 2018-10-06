#Example of Linear Regression

humanHeights <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131) #input
humanWeights <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48) #output



# Apply the lm() function.
relation <- lm(humanWeights~humanHeights)

print(summary(relation))

# a <- data.frame(x = 170)
# result <-  predict(relation,a)

newHeightDF <- data.frame(humanHeights = 170)
cat("This function is used to predict the weight of the person which has a height of", newHeightDF$humanHeights, "cm \n")
result <-  predict(relation,newHeightDF)
cat("The predicted weight of this person is", result, "kg \n")

# Give the chart file a name.
savePlotFile <- "linearregression3.pdf"
pdf(file = savePlotFile, width = 5, height = 10)

# pdf(file = "linearregression2.pdf")

cat("The plot will be printed in the following file: ", getwd(), "/", savePlotFile, "\n", sep="")

# Alternative
# output_path = dirname(normalizePath(savePlotFile))
# print(output_path)


# Plot the chart.
plot(humanWeights, humanHeights, col = "blue", main = "height and weight regression",
abline(lm(humanHeights~humanWeights), col = "green"), cex = 1.3, pch = 16, xlab = "weight in kg", ylab = "height in cm")

# Save the file.
dev.off()