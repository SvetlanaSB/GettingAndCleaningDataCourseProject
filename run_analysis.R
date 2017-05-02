# run_analysis.R
# Getting and Cleaning Data Course Project

## Download data for the project and unzip data file
if(!file.exists("./data")) dir.create("./data")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "./data/project_data.zip")
project_data_list <- unzip("./data/project_data.zip", exdir = "./data")


## Read the data
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
features <- read.table("./data/UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

## Merge the training nd the tet sets into one dataset
x <- rbind(x_train,x_test)
y <- rbind(y_train,y_test)
subject <- rbind(subject_train,subject_test)

project_data <- cbind(subject, y, x)

## Extract only the measurements on the mean and standard deviation for each measurement. 
featureNames <- c("subject", "activity", as.character(features[,2]))
colnames(project_data) <- featureNames

mean_colnames <- grep("mean()", colnames(project_data))
std_colnames <- grep("std()", colnames(project_data))
mean_std_columns <- c(mean_colnames, std_colnames)

mean_std_data <- project_data[, c(1,2,mean_std_columns)]

## Uses descriptive activity names to name the activities in the data set
mean_std_data$activity <- sapply(mean_std_data$activity, function(x) activity_labels[x, 2])

## Appropriately labels the data set with descriptive variable names.
names(mean_std_data) <- gsub("Acc", "Accelerator", names(mean_std_data))
names(mean_std_data) <- gsub("Gyro", "Gyroscope", names(mean_std_data))
names(mean_std_data) <- gsub("Mag", "Magnitude", names(mean_std_data))
names(mean_std_data) <- gsub("Freq", "Frequency", names(mean_std_data))
names(mean_std_data) <- gsub("\\()", "", names(mean_std_data))
names(mean_std_data) <- gsub("^t", "time", names(mean_std_data))
names(mean_std_data) <- gsub("^f", "frequency", names(mean_std_data))
names(mean_std_data) <- gsub("-mean", "Mean", names(mean_std_data))
names(mean_std_data) <- gsub("-std", "Std", names(mean_std_data))

## From the data set in previous step, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(dplyr)
tidy_date <- mean_std_data %>% group_by(subject, activity) %>% summarise_each(funs(mean))

write.table(tidy_date, "./data/tidy_data.txt", row.names = FALSE)
