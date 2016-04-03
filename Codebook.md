### Code Book
This code book summarizes the resulting data fields in tidy.txt.
The data for project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

#### Identifiers:
* subject,  Key or id of the test subject(s)
* activity,  Type of activity performed when measurements were taken

#### Process Overview
1. Step 1 merges training and test sets into one data set using rbind with a final dataset of myData.
 i. This step also pulls the variables of subject and activity
 ii. Data Used: "Y_test.txt", "Y_train.txt", "subject_train.txt", "subject_test.txt", "X_test.txt", "X_train.txt"

2. Extract only measurement of the mean and standard dev for each using grep
3. Uses descriptive activity names for activities in the data set taken from "activity_labels.txt"
4. Appropriately labels the data set with descriptive variable names using gsub and myData dataset
5. Create a second, independent tidy data set w/average of each variable for each activity and subject

#### Measurements

tBodyAccMeanX, tBodyAccMeanY, tBodyAccMeanZ, tBodyAccStdX, tBodyAccStdY, tBodyAccStdZ, tGravityAccMeanX
tGravityAccMeanY, tGravityAccMeanZ, tGravityAccStdX, tGravityAccStdY, tGravityAccStdZ, tBodyAccJerkMeanX
tBodyAccJerkMeanY, tBodyAccJerkMeanZ, tBodyAccJerkStdX, tBodyAccJerkStdY, tBodyAccJerkStdZ
tBodyGyroMeanX, tBodyGyroMeanY, tBodyGyroMeanZ, tBodyGyroStdX, tBodyGyroStdY, tBodyGyroStdZ
tBodyGyroJerkMeanX, tBodyGyroJerkMeanY, tBodyGyroJerkMeanZ, tBodyGyroJerkStdX, tBodyGyroJerkStdY
tBodyGyroJerkStdZ, tBodyAccMagMean, tBodyAccMagStd, tGravityAccMagMean, tGravityAccMagStd
tBodyAccJerkMagMean, tBodyAccJerkMagStd, tBodyGyroMagMean, tBodyGyroMagStd, tBodyGyroJerkMagMean
tBodyGyroJerkMagStd, fBodyAccMeanX, fBodyAccMeanY, fBodyAccMeanZ, fBodyAccStdX, fBodyAccStdY
fBodyAccStdZ, fBodyAccMeanFreqX, fBodyAccMeanFreqY, fBodyAccMeanFreqZ, fBodyAccJerkMeanX
fBodyAccJerkMeanY, fBodyAccJerkMeanZ, fBodyAccJerkStdX, fBodyAccJerkStdY, fBodyAccJerkStdZ
fBodyAccJerkMeanFreqX, fBodyAccJerkMeanFreqY, fBodyAccJerkMeanFreqZ, fBodyGyroMeanX, fBodyGyroMeanY
fBodyGyroMeanZ, fBodyGyroStdX, fBodyGyroStdY, fBodyGyroStdZ, fBodyGyroMeanFreqX, fBodyGyroMeanFreqY
fBodyGyroMeanFreqZ, fBodyAccMagMean, fBodyAccMagStd, fBodyAccMagMeanFreq, fBodyBodyAccJerkMagMean
fBodyBodyAccJerkMagStd, fBodyBodyAccJerkMagMeanFreq, fBodyBodyGyroMagMean, fBodyBodyGyroMagStd
fBodyBodyGyroMagMeanFreq, fBodyBodyGyroJerkMagMean, fBodyBodyGyroJerkMagStd, fBodyBodyGyroJerkMagMeanFreq

#### Activity Labels
* WALKING (value 1): subject only walked during specific test
* WALKING_UPSTAIRS (value 2): Subject walked UP stairs during the test
* WALKING_DOWNSTAIRS (value 3): Subject walked DOWN staris during the test
* SITTING (value 4): Subject was setted during the test.
* STANDING (value 5): Subject was standing during the test.
* LAYING (value 6): Subject was laying down during the test.
* 
##
