#Columns in Data Set

- subject : subject ID
- Activity : Activity Name
- tBodyAcc-mean-X
- tBodyAcc-mean-Y
- tBodyAcc-mean-Z
- tGravityAcc-mean-X
- tGravityAcc-mean-Y
- tGravityAcc-mean-Z
- tBodyAccJerk-mean-X
- tBodyAccJerk-mean-Y
- tBodyAccJerk-mean-Z
- tBodyGyro-mean-X
- tBodyGyro-mean-Y
- tBodyGyro-mean-Z
- tBodyGyroJerk-mean-X
- tBodyGyroJerk-mean-Y
- tBodyGyroJerk-mean-Z
- tBodyAccMag-mean
- tGravityAccMag-mean
- tBodyAccJerkMag-mean
- tBodyGyroMag-mean
- tBodyGyroJerkMag-mean
- fBodyAcc-mean-X
- fBodyAcc-mean-Y
- fBodyAcc-mean-Z
- fBodyAcc-meanFreq-X
- fBodyAcc-meanFreq-Y
- fBodyAcc-meanFreq-Z
- fBodyAccJerk-mean-X
- fBodyAccJerk-mean-Y
- fBodyAccJerk-mean-Z
- fBodyAccJerk-meanFreq-X
- fBodyAccJerk-meanFreq-Y
- fBodyAccJerk-meanFreq-Z
- fBodyGyro-mean-X
- fBodyGyro-mean-Y
- fBodyGyro-mean-Z
- fBodyGyro-meanFreq-X
- fBodyGyro-meanFreq-Y
- fBodyGyro-meanFreq-Z
- fBodyAccMag-mean
- fBodyAccMag-meanFreq
- fBodyBodyAccJerkMag-mean
- fBodyBodyAccJerkMag-meanFreq
- fBodyBodyGyroMag-mean
- fBodyBodyGyroMag-meanFreq
- fBodyBodyGyroJerkMag-mean
- fBodyBodyGyroJerkMag-meanFreq
- tBodyAcc-standard deviation-X
- tBodyAcc-standard deviation-Y
- tBodyAcc-standard deviation-Z
- tGravityAcc-standard deviation-X
- tGravityAcc-standard deviation-Y
- tGravityAcc-standard deviation-Z
- tBodyAccJerk-standard deviation-X
- tBodyAccJerk-standard deviation-Y
- tBodyAccJerk-standard deviation-Z
- tBodyGyro-standard deviation-X
- tBodyGyro-standard deviation-Y
- tBodyGyro-standard deviation-Z
- tBodyGyroJerk-standard deviation-X
- tBodyGyroJerk-standard deviation-Y
- tBodyGyroJerk-standard deviation-Z
- tBodyAccMag-standard deviation
- tGravityAccMag-standard deviation
- tBodyAccJerkMag-standard deviation
- tBodyGyroMag-standard deviation
- tBodyGyroJerkMag-standard deviation
- fBodyAcc-standard deviation-X
- fBodyAcc-standard deviation-Y
- fBodyAcc-standard deviation-Z
- fBodyAccJerk-standard deviation-X
- fBodyAccJerk-standard deviation-Y
- fBodyAccJerk-standard deviation-Z
- fBodyGyro-standard deviation-X
- fBodyGyro-standard deviation-Y
- fBodyGyro-standard deviation-Z
- fBodyAccMag-standard deviation
- fBodyBodyAccJerkMag-standard deviation
- fBodyBodyGyroMag-standard deviation
- fBodyBodyGyroJerkMag-standard deviation

#Feature Details:
- Time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

- The 'f' to indicate frequency domain signals


#Data
- File contains average of mean and standard deviation data for each subject by each activity

#Transformation
- Column bind training set and test set with their corresponding data for activity id and subject id.
- row bind two datasets to make one universal data set as needed.
- merge activity data and data set of observations to get activity names.
- remove activity id as we don't need activity id , we have activity name which is more descriptive
- Assign column names to each feature
- filter data set so that it contains only mean and standard deviation data along with subject ID and activity name
- Aggregate data on subject id and activity name
- remove "()" from column names

