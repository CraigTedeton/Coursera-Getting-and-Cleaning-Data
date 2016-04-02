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

2. Step 2 extract only measurement of the mean and standard dev for each using grep
3. Step 3 uses descriptive activity names for activities in the data set taken from "activity_labels.txt"
4. Step 4 appropriately labels the data set with descriptive variable names using gsub and myData dataset
5. Step 5 Creates a second, independent tidy data set w/average of each variable for each activity and subject

#### Measurements

"timeBodyAccelerometer-mean()-X" "timeBodyAccelerometer-mean()-Y" "timeBodyAccelerometer-mean()-Z" "timeBodyAccelerometer-std()-X" "timeBodyAccelerometer-std()-Y" "timeBodyAccelerometer-std()-Z" "timeGravityAccelerometer-mean()-X" "timeGravityAccelerometer-mean()-Y" "timeGravityAccelerometer-mean()-Z" "timeGravityAccelerometer-std()-X" "timeGravityAccelerometer-std()-Y" "timeGravityAccelerometer-std()-Z" "timeBodyAccelerometerJerk-mean()-X" "timeBodyAccelerometerJerk-mean()-Y" "timeBodyAccelerometerJerk-mean()-Z" "timeBodyAccelerometerJerk-std()-X" "timeBodyAccelerometerJerk-std()-Y" "timeBodyAccelerometerJerk-std()-Z" "timeBodyGyroscope-mean()-X" "timeBodyGyroscope-mean()-Y" "timeBodyGyroscope-mean()-Z" "timeBodyGyroscope-std()-X" "timeBodyGyroscope-std()-Y" "timeBodyGyroscope-std()-Z" "timeBodyGyroscopeJerk-mean()-X" "timeBodyGyroscopeJerk-mean()-Y" "timeBodyGyroscopeJerk-mean()-Z" "timeBodyGyroscopeJerk-std()-X" "timeBodyGyroscopeJerk-std()-Y" "timeBodyGyroscopeJerk-std()-Z" "timeBodyAccelerometerMagnitude-mean()" "timeBodyAccelerometerMagnitude-std()" "timeGravityAccelerometerMagnitude-mean()" "timeGravityAccelerometerMagnitude-std()" "timeBodyAccelerometerJerkMagnitude-mean()" "timeBodyAccelerometerJerkMagnitude-std()" "timeBodyGyroscopeMagnitude-mean()" "timeBodyGyroscopeMagnitude-std()" "timeBodyGyroscopeJerkMagnitude-mean()" "timeBodyGyroscopeJerkMagnitude-std()" "frequencyBodyAccelerometer-mean()-X" "frequencyBodyAccelerometer-mean()-Y" "frequencyBodyAccelerometer-mean()-Z" "frequencyBodyAccelerometer-std()-X" "frequencyBodyAccelerometer-std()-Y" "frequencyBodyAccelerometer-std()-Z" "frequencyBodyAccelerometerJerk-mean()-X" "frequencyBodyAccelerometerJerk-mean()-Y" "frequencyBodyAccelerometerJerk-mean()-Z" "frequencyBodyAccelerometerJerk-std()-X" "frequencyBodyAccelerometerJerk-std()-Y" "frequencyBodyAccelerometerJerk-std()-Z" "frequencyBodyGyroscope-mean()-X" "frequencyBodyGyroscope-mean()-Y" "frequencyBodyGyroscope-mean()-Z" "frequencyBodyGyroscope-std()-X" "frequencyBodyGyroscope-

###### Variables from myData
* "time"
* "frequency"
* "Accelerometer"
* "Gyroscope"
* "Magnitude"
* "Body"

