---
title: "CodeBook"
author: "JAMGee"
date: "August 23, 2015"
output: html_document
---

## Created Objects
Once the run_analysis.R has been run, the foillowing objects will exist in your environment:

* features: All of the recorded data variable names from features.txt.
* featuresName: A single vector consisting of all of the recorded data variables names from features.txt.
* activtityLabels: The activity number/name pairing found in activity_labels.txt.
* subtrain: The training set of subjects found in subject_train.txt.
* subtest: The test set of subjects found in subject_test.txt.
* subjects: The combined training and test sets of subjects.
* ytrain: The training set of activity numbers found in Y_train.txt.
* ytest: The test set of activity numbers found in Y_train.txt.
* activities: The merged training and test sets of activity numbers combined with the readable activity name.
* xtrain: The training set of recorded data found in X_train.txt.
* xtest: The test set of recorded data found in X_train.txt.
* x: The combined recorded data of the training and test sets with appropriate names for the variables.
* xMean: A subset of combined recorded data consisting of the items with the string "mean" in the title.
* xSTD: A subset of combined recorded data consisting of the items with the string "std" in the title.
* recordedData: A combined subset of the recorded data with the mean and standard deviation data.
* data: A data frame consisting of the subject/activity name pairing assigned to the mean and standard deviation data.
* testAgg: The mean of each variable by subject/activity pairing.
* aggPt1: The subject and activity columns.
* aggPt2: The averaged recorded data columns.
* aggMean: The combined subject, activity, and recorded data columns.

## Subjects
Subjects are numbered 1-30 and represent the 30 subjects that participated in the training and test data sets.

## Activities
Activities were originally labelled 1-6, but they have been assigned their readable names as follows:

1- Walking
2- Walking Upstairs
3- Walking Downstairs
4- Sitting
5- Standing
6- Laying

## Recorded Data Variables
* The orginal recorded data set had 561 vectors, but selecting only mean and standard deviation data resulted in 86 variables..
* The consisting of time in seconds (prefix "t"") and frequency variables in hertz (prefix "f"). 

Below is a short description of the components in the selected variable set:
* X, Y, Z: the three spatial dimensions of the measurements. If -xyz is used, it indicates a three dimensional signal.
* t: Indicates time.
* f: Indicates frequency domain signals.
* Body: Body
* Acc: Acceleration
* Jerk: Jerk
* Gravity: Gravity
* Mag: Magnitude
* Gyro: Gyroscopic
