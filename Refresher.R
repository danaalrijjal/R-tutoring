###Dataframe to replace values greater than 9 with -1

replaceNum <- function(dataframeX, oldNum, newNum){
  
  cat("This replaceNum function will replace the values > or = to", oldNum, "with", newNum, "\n")

  dataframeX[dataframeX >= oldNum] <- newNum
  return(dataframeX)
  # if we were using C:
  #
  # for (each column)
  #  for (each row)
  #   if ... replace
  #  endfor
  # endfor
}
  

num <- 50
randomVals <- sample(1:num, num)
randomValsNorm <- randomVals/num


print(randomVals)
print(randomValsNorm)
nRows <- 10

matA <- matrix(randomValsNorm,nRows)

print(matA)

dataframeA <- data.frame(matA, stringsAsFactors = FALSE)
print(dataframeA)

numtoReplace <- 0.9
numtoAdd <- -1

replacingDF <- replaceNum(dataframeA, numtoReplace, numtoAdd)
print(replacingDF)

  