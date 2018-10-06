#
# Scrip that reads and analyzes Prostate Cancer dataset
# 28/07/2018 Dana Al Rijjal dana.alrijjal@mail.utoronto.ca
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

maxNum <- 5000
newRadius <- insertNum(prostateDF$radius, maxNum)

findOutlier(newRadius)

print(head(prostateDF))
print(dataframeChange(head(prostateDF)))
table((prostateDF$radius))
gwe