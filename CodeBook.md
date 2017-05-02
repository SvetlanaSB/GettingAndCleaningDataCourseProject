This code book describes the variables, the data, and any transformations or work that were performed to clean up the data. Clean dataset is represented in tidy_data.txt.


The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The original data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The R script called run_analysis.R does the following:

1. Downloads the original data from URL provided in the course project. Unzips downloaded file into /data/ directory in working directory. If /data/ directory does not exist creates it.

2. Merges the training and the test sets to create one data set.

3. Extracts only the measurements on the mean and standard deviation for each measurement.
mean(): Mean value
std(): Standard deviation
meanFreq(): Weighted average of the frequency components to obtain a mean frequency

4. Uses descriptive activity names to name the activities in the data set. 
Activity names:
WALKING (value 1): subject was walking during the test
WALKING_UPSTAIRS (value 2): subject was walking up a staircase during the test
WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test
SITTING (value 4): subject was sitting during the test
STANDING (value 5): subject was standing during the test
LAYING (value 6): subject was laying down during the test

5. Appropriately labels the data set with descriptive variable names.
subject - The subject ID.
activity - The activity name
## Measurments (see Feature Selection below)
timeBodyAcceleratorMean-X 
timeBodyAcceleratorMean-Y 
timeBodyAcceleratorMean-Z
timeGravityAcceleratorMean-X
timeGravityAcceleratorMean-Y
timeGravityAcceleratorMean-Z
timeBodyAcceleratorJerkMean-X
timeBodyAcceleratorJerkMean-Y
timeBodyAcceleratorJerkMean-Z
timeBodyGyroscopeMean-X
timeBodyGyroscopeMean-Y
timeBodyGyroscopeMean-Z
timeBodyGyroscopeJerkMean-X
timeBodyGyroscopeJerkMean-Y
timeBodyGyroscopeJerkMean-Z
timeBodyAcceleratorMagnitudeMean
timeGravityAcceleratorMagnitudeMean
timeBodyAcceleratorJerkMagnitudeMean
timeBodyGyroscopeMagnitudeMean
timeBodyGyroscopeJerkMagnitudeMean
frequencyBodyAcceleratorMean-X
frequencyBodyAcceleratorMean-Y
frequencyBodyAcceleratorMean-Z
frequencyBodyAcceleratorMeanFrequency-X
frequencyBodyAcceleratorMeanFrequency-Y
frequencyBodyAcceleratorMeanFrequency-Z
frequencyBodyAcceleratorJerkMean-X
frequencyBodyAcceleratorJerkMean-Y
frequencyBodyAcceleratorJerkMean-Z
frequencyBodyAcceleratorJerkMeanFrequency-X
frequencyBodyAcceleratorJerkMeanFrequency-Y
frequencyBodyAcceleratorJerkMeanFrequency-Z
frequencyBodyGyroscopeMean-X
frequencyBodyGyroscopeMean-Y
frequencyBodyGyroscopeMean-Z
frequencyBodyGyroscopeMeanFrequency-X
frequencyBodyGyroscopeMeanFrequency-Y
frequencyBodyGyroscopeMeanFrequency-Z
frequencyBodyAcceleratorMagnitudeMean
frequencyBodyAcceleratorMagnitudeMeanFrequency
frequencyBodyBodyAcceleratorJerkMagnitudeMean
frequencyBodyBodyAcceleratorJerkMagnitudeMeanFrequency
frequencyBodyBodyGyroscopeMagnitudeMean
frequencyBodyBodyGyroscopeMagnitudeMeanFrequency
frequencyBodyBodyGyroscopeJerkMagnitudeMean
frequencyBodyBodyGyroscopeJerkMagnitudeMeanFrequency
timeBodyAcceleratorStd-X
timeBodyAcceleratorStd-Y
timeBodyAcceleratorStd-Z
timeGravityAcceleratorStd-X
timeGravityAcceleratorStd-Y
timeGravityAcceleratorStd-Z
timeBodyAcceleratorJerkStd-X
timeBodyAcceleratorJerkStd-Y
timeBodyAcceleratorJerkStd-Z
timeBodyGyroscopeStd-X
timeBodyGyroscopeStd-Y
timeBodyGyroscopeStd-Z
timeBodyGyroscopeJerkStd-X
timeBodyGyroscopeJerkStd-Y
timeBodyGyroscopeJerkStd-Z
timeBodyAcceleratorMagnitudeStd
timeGravityAcceleratorMagnitudeStd
timeBodyAcceleratorJerkMagnitudeStd
timeBodyGyroscopeMagnitudeStd
timeBodyGyroscopeJerkMagnitudeStd
frequencyBodyAcceleratorStd-X
frequencyBodyAcceleratorStd-Y
frequencyBodyAcceleratorStd-Z
frequencyBodyAcceleratorJerkStd-X
frequencyBodyAcceleratorJerkStd-Y
frequencyBodyAcceleratorJerkStd-Z
frequencyBodyGyroscopeStd-X
frequencyBodyGyroscopeStd-Y
frequencyBodyGyroscopeStd-Z
frequencyBodyAcceleratorMagnitudeStd
frequencyBodyBodyAcceleratorJerkMagnitudeStd
frequencyBodyBodyGyroscopeMagnitudeStd
frequencyBodyBodyGyroscopeJerkMagnitudeStd

=================
## Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAccelerator-XYZ and timeGyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccelerator-XYZ and timeGravityAccelerator-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAcceleratorJerk-XYZ and timeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAcceleratorMagnitude, timeGravityAcceleratorMagnitude, timeBodyAcceleratorJerkMagnitude, timeBodyGyroscopeMagnitude, timeBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAccelerator-XYZ, frequencyBodyAcceleratorJerk-XYZ, frequencyBodyGyroscope-XYZ, frequencyBodyAcceleratorJerkMagnitude, frequencyBodyGyroscopeMagnitude, frequencyBodyGyroscopeJerkMagnitude. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The measurments are set of variables that were estimated from these signals. 


6. From the data set in previous step, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The output file is tidy_data.txt
