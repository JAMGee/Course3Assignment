---
title: "ReadMe"
author: "JAMGee"
date: "August 23, 2015"
output: html_document
---

# ReadMe for Coursera Course "Getting and Cleaning Data" Course Project

## Introduction
This document is designed to describe an interaction with data collected by University of California-Irvine on wearable devices. By following the steps outlined in the document, readers will be able to: 


1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement. 
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names. 
5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

## UC - Irvine Data

Download and extract the entirety of the UC - Irvine data from the following link:

[linked phrase](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

The important data for this exercise is comprised of:

* test and training data
  + assigned subject number
  + assigned activity number
  + recorded data for subject/activity pairings.
* full names for the six activity numbers
* variable names for the recporded data.

The test and train data groups are associated with one another, and, when combined, result in table that creates rows that have subject, activity, and recording data group.

If additional information on the data is required, please see the following link:

[linked phrase](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Required Documents
There are nine documents required in the working directory and two R Packages installed to perform the steps outlined in the Introduction. 

Note: The parent directory of items 2-8 is the unzipped UC - Irvine data.

1. run_analysis.R
  + Description: The R script that reads the appropriate files into R and parses them into the mean and standard deviations of the measurements in the UC - Irvine data.  
  + Location:  
2. subject_train.txt
  + Description: The associated subjects from the training data as defined by their assigned number. 
  + Location: ./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train
3. X_train.txt
  + Description: The recorded data from the train data group.
  + Location: ./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train
4. Y_train.txt
  + Description: The associated activity from the training data as defined by their assigned number.
  + Location: ./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train
5. subject_test.txt
  + Description: The associated subjects from the testing data as defined by their assigned number.
  + Location: ./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test
6. X_test.txt
  + Description: The recorded data from the test data group.
  + Location: ./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test
7. Y_test.txt
  + Description: The associated activity from the training data as defined by their assigned number.
  + Location: ./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test
8. activity_labels.txt
  + Description: The human-readable names associated with the activity numbers.
  + Location: ./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset
9. features.txt
  + Description: The names for each column in the recorded data.
  + Location: ./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset
10. R Package - plyr
  + Description: An R Package that contains useful functions for manipulating data.
  + Location: Tools > Install Package: dplyr within R.
11. R Package - dplyr
  + Description: An R Package that contains useful functions for manipulating data.
  + Location: Tools > Install Package: dplyr within R.

## Steps

1. Place all of the required files into the R working directory.
2. Install the dplyr package.
3. Open the run_analysis.R in R (Studio) and run the file. Running the file does the following:
  + Reads the recorded data (X_test.txt/X_train.txt) for the test and training sets and merges them.
  + Reads the names of the recorded data (features.txt).
  + Attaches the recorded data with their names.
  + Selects only the mean and standard deviation data (any variable with "mean" or "std" in the title).
  + Assigns subject numbers to the recorded data (subject_test.txt/subject_train.txt).
  + Assigns an activity number to the recorded data (Y_test.txt/Y_train.txt).
  + Assigns an activity name to the activity number (activity_labels.txt).
  + Merges the subject number, activity name, and recorded mean and standard deviation data for each pairing into a single file.
4. Takes each subject/activity pairing and averages it for the 86 recorded data variables.
5. Outputs a .txt file, "aggregatedMean.txt" that contains the subject/activity pairings for the 86 recorded data variables.