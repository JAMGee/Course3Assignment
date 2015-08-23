
## Step 1 - Load the necessary libraries (plyr and dplyr).

library(plyr)
library(dplyr)


## Step 2 - Importing the names for recorded data columns and activities.
## Import the features_txt and activity_labels.txt files into R to name the columns for
## the X_train/test files and to assign readable names to the activity numbers in the Y_train/test files.
## Since Features.txt has two columns, select only the second column of the 
## file before using it for the column names.

features <- read.table("features.txt")
featuresName <- features[,2]
activityLabels <- read.table("activity_labels.txt")


## Step 3 - Importing the subjects.
## Read the subjects (subject_train.txt and subject_test.txt) files into R, combine them with rbind,
## and name the first column "subject".



subtrain <- read.table("subject_train.txt")
subtest <- read.table("subject_test.txt")

subjects <- rbind(subtrain,subtest)

colnames(subjects) <- ("subject")


## Step 4 - Import the activity numbers and assign them readable names.
## Read the activity numbers (y_train.txt and y_test.txt) files into R, combine them with rbind
## assign readable names using the dplyr:left_join function and the activityLabels file, and name the columns.
## This fulfills Assignment Requirement 4 "Uses descriptive activity names to name the activities in the data set.".

ytrain <- read.table("y_train.txt")
ytest <- read.table("y_test.txt")

activities <- rbind(ytrain, ytest)
activities <- left_join(activities, activityLabels)

colnames(activities) <- c("activityNumber", "activityName")



## Step 5 - Import the recorded data into R and assign them column names.
## Import the recorded data (x_train.txt and x_test.txt) into R, combine them using rbind,
## assign column names to the files using the featuresName file, select only columns that contain
## the partial strings "mean" and "STD" to collect only mean and standard deviation data.
## Note: This fulfills Assignment Requirement 2 "Extracts only the measurements on the mean and standard deviation for each measurement". 
## Note: This fulfills Assignment Requirement 4 "Appropriately labels thge data set with descriptive variable names".

xtrain <- read.table("x_train.txt")
xtest <- read.table("x_test.txt")

x <- rbind(xtrain,xtest)

colnames(x) = featuresName

xMean <- select(x, contains("mean"))
xSTD <- select(x, contains("std"))
recordedData <- cbind(xMean,xSTD)


## Step 5 - Merge the subjects, activities (activityName only), and recorded data using the cbind function.
## Note: This fulfills Assignment Requirement 1: "Merges the training and test sets to create one data set".
data <- cbind(subjects, activities$activityName, recordedData)
colnames(data)[2] <- "activityName"

## Step 6 - By subject/activity pairing, average each of the recorded data elements.
## This fulfills Assignment Requirement 5 "From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.".

testAgg  <- aggregate(data, by=list(data$subject, data$activityName), FUN=mean)
aggPt1 <- testAgg[,1:2]
aggPt2 <- testAgg[5:90]
aggMean <- cbind(aggPt1,aggPt2)
colnames(aggMean)[1] <- "subject"
colnames(aggMean)[2] <- "activityName"

## Step 7 - Write an output text file that contains the aggregated mean data.

write.table(aggMean,"aggregatedMean.txt",row.names=FALSE)

