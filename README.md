### Coursera-Getting-and-Cleaning-Data End of Course Project
#### Due by April 3, 2016
#### Craig Tedeton

#### Data for the project: 
  - https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

#### Project has one R script called run_analysis.R that does the following;

* Downloads and extracts the raw data set to a data subdirectory within the working directory
* Load the label information from activity and feature information details
* Loads both the training and test datasets into memory having columns with mean ans standard deviation
* Loads the activity and subject data for both datasets, and merges the columns
* Merges the two datasets together
* Converts the activity and subject columns into factors
* Creates dataset having the mean value of each variable for each subject and activity pair

#### The output is a new data set named tidydata.txt
