# Getting and Cleaning Data Course Project
Coursera Project

## Description

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

The data for the project can be found [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

Full description of the data can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) 

You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Overview of analysis

- The data files are read, both for train and test.
- Subset x tables (measuremnts) to include only the `mean` and `std` variables. 
- Set variable names (not tidy names yet)
- Subset y tables (activity), set the tidy names (activities (WALKING, STITTING...))
- Subset subject tables, give a proper variable name (subject)
- Merge training and testing tables. 
- Give proper Tidy variable names, eliminating abreviations and symbols.
- Group the data set by `subject` and `activity`.
- Summarize the data set by the `mean()` of all variables. 
- Create `.txt` and `.csv` files
