#
# Scrip that finds the relationship between compactness and smoothness in the Prostate Cancer dataset
# Dana Al Rijjal dana.alrijjal@mail.utoronto.ca
# 


# Develop a function that reads in a vector and randomly assigns a number to 1 element  of this vector
insertNum <- function(vec, num){
  
  lastIndex <- length(vec)   # I used the length function to find the last index
  cat("\n lastIndex =", lastIndex, "\n")
  
  randomIndex <- sample(1:lastIndex,1)   # I used the sample function to randomly choose a number 
  cat("\n randomIndex =", randomIndex, "\n")
  
  cat(" vec[randomIndex] =",  vec[randomIndex])
  
  cat("\n Before Insertion Vector \n")
  print(vec)
  vec[randomIndex] <- num
  cat("\n After Insertion Vector \n")
  print(vec)
  
  return(vec)
}


# Develop a function that reads in a vector and finds if there are outliers
findOutlier <- function(vec){
 sortVec <- sort(vec, decreasing = FALSE)
  lastIndex <- length(sortVec)
  penultimateIndex <- lastIndex -1
  lastNum <- sortVec[lastIndex]
  penultimateNum <- sortVec[penultimateIndex]
  if(lastNum/penultimateNum >= 100){
    cat("The outlier is", lastNum, "\n")
    print("Outlier found")
    return(TRUE)
  }
  else{
    print("No outlier found")
    return(FALSE)
  }
}

# Develop a function that reads in a dataframe and replaces all elemnts that are >= 20 with -1

dataframeChange <- function(dFrame){
  thresholdVal <- 20
  dFrame[dFrame >= thresholdVal] <- -1
  return(dFrame)
  }

prostateDF <- read.csv("prostate_cancer_DRE_exam_set.csv", stringsAsFactors = FALSE) 
print(head(prostateDF)) 

cat("The features of the dataset are \n", colnames(prostateDF))
rowN <- dim(prostateDF)[1]
colN <- dim(prostateDF)[2]
cat("\n The number of rows in this dataset are", rowN, "and the number of columns are", colN, "\n")
cat("\n The structure of the dataframe is \n") 
print(str(prostateDF))
cat("\n summary(prostateDF) \n")
print(summary(prostateDF))

#Relationship between compactness and smoothness

relation <- lm(prostateDF$compactness~prostateDF$smoothness)
print(relation)

randomNum <- as.numeric(Sys.time()) #to get a random number and save file with a different name

savePlotFile <- paste("ProstateCancerLinearRegression" , randomNum, ".pdf", sep = "", collapse = NULL)
# savePlotFile <- "ProstateCancerLinearRegression.pdf" 
pdf(file = savePlotFile, width = 5, height = 10)

plot(prostateDF$compactness, prostateDF$smoothness, col = "blue", main = "Compactness and Smoothness Relation",
     abline(lm(prostateDF$compactness~prostateDF$smoothness), col = "green"), cex = 1.3, pch = 16, xlab = "compactness", ylab = "smoothness")

dev.off()
cat("The plot was saved in the file named", savePlotFile, "\n")