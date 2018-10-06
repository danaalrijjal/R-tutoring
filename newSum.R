# Function that was developed on this date for Sum
newSum <- function(arg_1, arg_2){
  
  totalSum <- arg_1 + arg_2
  
  cat("The sum is ", totalSum, " \n")
  
  return(totalSum)
  
}

# Function that contains a loop and prints numbers from 1 to 10
printNum <- function(){
  startNum <- 1
  endNum <- 100
  for(num in startNum:endNum){
    cat(num, "\n")
  }
}

# Function that implements division between two numbers
divNum <- function(numA,numB){
  res <- NULL
  if(numB!= 0){
    res <- numA/numB
  }
  else{
    print("The denominator is equal to 0 so the operation cannot be performed. The operation will return NULL")
  }
  return(res)
}

#Function that reads in two matrices and one real value and return the multiplication of matrices and value

multMatandVal <- function(matC, matD, numC){
  multiPly <- matC * matD* numC
  return(multiPly)
}

#Function that reads Boolean argument and one real number, if the boolean is true 
#and number is positive it prints good evening, otherwise prints byebye

readBoolean <- function(boolA, numA){
  if(boolA == TRUE & numA >= 0){
    print("Good Evening")
  }
  else
  {
    print("Bye bye")
  }
}

# Replacing the numbers of radius
replaceRadius <- function(numA,numB){
 If(maxRadius == numA){
   maxRadius <- numB
 }
  
 } 

#Ifa feature is 100 times bigger than the second feature print outlier
printOutlier <- function(numA,numB){
  If(numA/numB >= 100){
      print("Outlier")
    }
}