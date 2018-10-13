# Write a for loop that prints the number of unique values for each feature of the midwest dataset

library(ggplot2)

options(scipen=999) #changed value format from e to complete integer
data("midwest", package = "ggplot2")

elementNum <- dim(midwest)[1]
featureNum <- dim(midwest)[2]

for(i in 1:featureNum){
  uniqueVals <- length(table(midwest[,i])) # retreiving unique values for each feature (column)
  featureName <- colnames(midwest[,i]) # retreiving the names of each feature
  cat("The number of unique values in the feature", featureName, "is", uniqueVals, "\n")
}