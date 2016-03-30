## Pre exercise code
## libs for second data set
library(plyr)

## other libs


##fileUrl <- "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"
## Download data zip file
fileUrl1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl1, destfile = "./data/data.zip")
## Extract/list data zip
unzip("./data/data.zip", exdir = "./data")
## set/view path/files
fpath <- file.path("./data", "UCI HAR Dataset")
filelist <- list.files(fpath, recursive = TRUE)

datActivTest  <- read.table(file.path(fpath, "test" , "Y_test.txt" ),header = FALSE)
datActivTrain <- read.table(file.path(fpath, "train", "Y_train.txt"), header = FALSE)

datSubjTrain <- read.table(file.path(fpath, "train", "subject_train.txt"), header = FALSE)
datSubjTest  <- read.table(file.path(fpath, "test" , "subject_test.txt"), header = FALSE)

datFeatTest  <- read.table(file.path(fpath, "test" , "X_test.txt" ), header = FALSE)
datFeatTrain <- read.table(file.path(fpath, "train", "X_train.txt"), header = FALSE)

# Step 1
# Merge training and test sets into one data set
################################################
datSubj <- rbind(datSubjTrain, datSubjTest)
datActiv <- rbind(datActivTrain, datActivTest)
datFeat <- rbind(datFeatTrain, datFeatTest)

names(datSubj) <- c("subject")
names(datActiv) <- c("activity")
datFeatName <- read.table(file.path(fpath, "./features.txt"), head = FALSE)
names(datFeat) <- datFeatName$V2

datComb <- cbind(datSubj, datActiv)
myData <- cbind(datFeat, datComb)

# Step 2
# Extract only measurement of the mean a&standard dev for each
##############################################################
subdatFeatName <- datFeatName$V2[grep("mean\\(\\)|std\\(\\)", datFeatName$V2)]

selectName <- c(as.character(subdatFeatName), "subject", "activity" )
myData <- subset(myData, select = selectName)

# Step 3
# Use descriptive activity names for activities in the data set
###############################################################
activLabel <- read.table(file.path(fpath, "./activity_labels.txt"), header = FALSE)


# Step 4
# Appropriately label the data set with descriptive variable name
#################################################################
names(myData) <- gsub("^t", "time", names(myData))
names(myData) <- gsub("^f", "frequency", names(myData))
names(myData) <- gsub("Acc", "Accelerometer", names(myData))
names(myData) <- gsub("Gyro", "Gyroscope", names(myData))
names(myData) <- gsub("Mag", "Magnitude", names(myData))
names(myData) <- gsub("BodyBody", "Body", names(myData))


# Step 5
# Create second, independent tidy data set w/average of each var for each activity & subject
############################################################################################
myData1 <- aggregate(. ~subject + activity, myData, mean)
myData1 <- myData1[order(myData1$subject, myData1$activity),]
write.table(myData1, file = "tidydata.txt", row.name = FALSE)


