## Pre exercise code
## libs for second data set
library(plyr)

library(reshape2)

## Download the data set
fileUrl1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl1, destfile = "./data/data.zip")
## Extract/list data zip
unzip("./data/data.zip", exdir = "./data")
fpath <- file.path("./data/UCI HAR Dataset")
filelist <- list.files(fpath, recursive = TRUE)  ## list looks good to me

## Load the activity labels and features from the data set
#########################################################
activLabel <- read.table(file.path(fpath, "/activity_labels.txt"))
activLabel[,2] <- as.character(activLabel[,2])
feat <- read.table(file.path(fpath, "/features.txt"))
feat[,2] <- as.character(feat[,2])

## Extract only measurement of the mean and standard dev for each
#################################################################
featNeeded <- grep(".*mean.*|.*std.*", features[,2])
featNeeded.names <- features[featNeeded,2]
featNeeded.names = gsub('-mean', 'Mean', featNeeded.names)
featNeeded.names = gsub('-std', 'Std', featNeeded.names)
featNeeded.names <- gsub('[-()]', '', featNeeded.names)

## Load the datasets for training and test
#########################################
train <- read.table(file.path(fpath,"/train/X_train.txt"))[featNeeded]
trainActiv <- read.table(file.path(fpath,"/train/Y_train.txt"))
trainSubj <- read.table(file.path(fpath, "/train/subject_train.txt"))
train <- cbind(trainSubj, trainActiv, train)

test <- read.table(file.path(fpath, "/test/X_test.txt"))[featNeeded]
testActiv <- read.table(file.path(fpath, "/test/Y_test.txt"))
testSubj <- read.table(file.path(fpath, "/test/subject_test.txt"))
test <- cbind(testSubj, testActiv, test)

## Merge training and test data sets with labels
################################################
myData <- rbind(train, test)
colnames(myData) <- c("Subject", "Activity", featNeeded.names)

## Write merged data with labels to new data set
###############################################
myData$activity <- factor(myData$activity, levels = activLabel[,1], labels = activLabel[,2])
myData$subject <- as.factor(myData$subject)

myData.melted <- melt(myData, id = c("Subject", "Activity"))
myData.mean <- dcast(myData.melted, subject + activity ~ variable, mean)

write.table(myData.mean, "tidydata.txt", row.names = TRUE, quote = FALSE)
