values <- sample(1:20)

print(values)
print(length(values))

nRows <- 10

matA <- matrix(values,nRows)

print(matA)

dataframA <- data.frame(matA, stringsAsFactors = FALSE)
print(dataframA)

# Replace alll the values of the dataframe that are greater than 5 with a 0

threshold <- 5
print (dataframA > threshold)

dataframA[dataframA>threshold] <- 0
print(dataframA)

# Compose a dataframe with 1 column of numeric values and another column of characters
# # Create the data frame.
 example_df <- data.frame(
   myNums = c (1:5), 
   myChars = c("A","B","C","D","E"),
   stringsAsFactors = FALSE
 )
 
print(dataframA) 
table(dataframA)

dataFrameB <- data.frame(
  emp_id = c (1:5), 
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25), 
  
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                         "2015-03-27")),
  stringsAsFactors = FALSE
)


#The function should have these features:
#The function reads in a dataframe and an integer number N;
#If the integer number N is smaller or equal to the number of columns 
#of the dataframe, the function replaces the 1st column with the Nth
#column, and finally returns the manipulated dataframe;
#If the integer number N is greater than the number of columns of the
#dataframe, or equal to 0 or negative, the function should print an
#error message, and return NULL.

colChange <- function(datafA, num){
  
  colN <- dim(datafA)[2] #assign number of columns
  
  if(num <= colN){
    cat("The old column is \n")
    print(datafA[,1])
   datafA[1] <- datafA[num] # replace the 1st column of the dataframe with column(N)
    cat("The new dataframe is \n")
    print(datafA)
    return(datafA)
  }
  else{
    print("Error! Number of columns does not exist.")
    return(NULL)
  }
}

print(dataFrameB)

coltoDuplicate <- 3
newdF <- colChange(dataFrameB, coltoDuplicate) # call to function and output assignment 
print(newdF)
colChange(dataFrameB, 10)
