# GettingAndCleaningDataCourseProject
Getting And Cleaning Data Course Project
The purpose of this project is to demonstrate ability to collect, work with, and clean a data set.
connected.

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The original data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The R script called run_analysis.R does the following:

1. Downloads the original data from URL provided in the course project. Unzips downloaded file.

2. Merges the training and the test sets to create one data set.

3. Extracts only the measurements on the mean and standard deviation for each measurement.

4. Uses descriptive activity names to name the activities in the data set. 

5. Appropriately labels the data set with descriptive variable names.

6. From the data set in previous step, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

A code book called CodeBook.md describes the variables, the data, and any transformations or work that were performed to clean up the data.

Run the following in RStudioto get tidy dataset: 
1. Put run_analysis.R into your working directory.

2. source("run_analysis.R")
   tidy_date <- read.table("./data/tidy_data.txt", header=TRUE)
   View(tidy_date)