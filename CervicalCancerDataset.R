# Replace missing values (?) with the average value of each feature and then later with the median

cervicalDataset <- read.csv(file="risk_factors_cervical_cancer.csv", header=TRUE, sep=",", stringsAsFactors = TRUE)

print(head(cervicalDataset))
print(dim(cervicalDataset))
print(summary(cervicalDataset))
print(table(cervicalDataset$Biopsy))

#first find missing values in first feature

thisFeature <- cervicalDataset[,2]

cat("\n\n\nBefore gsub")
print(thisFeature)
thisFeature <- gsub("?",NA, thisFeature, fixed = TRUE)

#thisFeature[thisFeature=="?"] <- -1

cat("\n\n\n After gsub")
print(thisFeature)


cat("\n\n\n as.numeric")
print(as.numeric(thisFeature))

# values of the feature that are not NA
notNAs <- as.numeric(thisFeature[!is.na(thisFeature)])
print(length(notNAs))
print(length(thisFeature))


print(median(notNAs))
print(mean(notNAs))

print(as.numeric((thisFeature)))
thisFeature[is.na(thisFeature)] <- median(notNAs)
print(as.numeric((thisFeature)))

#Next time: develop for loop to include all features (i)
