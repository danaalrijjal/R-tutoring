# Function to test if datafram is greater than threshold, replace with -1

dataframeChange <- function(dFrame){  #Function declaration
  thresholdVal <- 20
  dFrame[dFrame >= thresholdVal] <- -1
  return(dFrame)
}

example_df <- data.frame(            #dataframe example creation
  myNumsA = c (-1,-50,10,30,90), 
  myNumsB = c (-1,-50,10,30,-10),
  myChars = c("A","B","C","D","E"),
  stringsAsFactors = FALSE
)

newDF <- dataframeChange(example_df)         #function call
print(example_df)
print(newDF)

numeric_cols <- names(example_df)[sapply(example_df, is.numeric)]  #function to return numeric columns of dataframe
print(numeric_cols)

numeric_col_size <- length(numeric_cols)

newdataFrame <- example_df #duplicate dataframe that will be manipulated in the loop
print(example_df)

# Loop to replace only numeric columns 
for(i in 1:numeric_col_size){
  positionofCol <- grep(numeric_cols[i], colnames(example_df))  # finding position of column from column name
  cat("The position of the column named ", numeric_cols[i], " is ", positionofCol, "\n")
  newdataFrame[positionofCol] <- dataframeChange(example_df[positionofCol]) #call function and assign output
}
print(newdataFrame)



