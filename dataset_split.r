values <- sample(1:1500)
nRows <- 150

matA <- matrix(values,nRows)
print(dim(matA))
print(head(matA))


dataframeA <- data.frame(matA)
head(dataframeA)
nrow(dataframeA)
trainingSetBeginning <- 1
trainingSetEnd <- (nrow(dataframeA) * 0.5)
validationSetBeginning <- trainingSetEnd +1 
validationSetEnd <- trainingSetEnd + (nrow(dataframeA) * 0.3)
testSetBeginning <- validationSetEnd + 1
testSetEnd <- validationSetEnd +(nrow(dataframeA) * 0.2)

print(trainingSetBeginning)
print(trainingSetEnd)
print(validationSetBeginning)
print(validationSetEnd)
print(testSetBeginning)
print(testSetEnd)
