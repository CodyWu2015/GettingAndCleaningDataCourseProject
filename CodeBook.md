# CodeBook for Getting And Cleaning Data Course Project
## simplfied verson
                                                                               
Column Name | Variable Name | Value of Explanation
----------- | ------------- | --------------------
subject     | subject ID    | 1 ~ 30
activityDescription | activity description |available values: WALKING WALKING_UPSTAIRS WALKING_DOWNSTAIRS SITTING STANDING LAYING
fBodyAccJerk-mean()-X        | mean value of mean FFT of Body Acceleration Jerk Signal on X axis                       | averaged over values grouped by (subject, activityDescription) |
fBodyAccJerk-mean()-Y        | mean value of mean FFT of Body Acceleration Jerk Signal on Y axis                       | averaged over values grouped by (subject, activityDescription) |
fBodyAccJerk-mean()-Z        | mean value of mean FFT of Body Acceleration Jerk Signal on Z axis                       | averaged over values grouped by (subject, activityDescription) |
fBodyAccJerk-std()-X         | mean value of standard deviation of FFT of Body Acceleration Jerk Signal on X axis      | averaged over values grouped by (subject, activityDescription) |
fBodyAccJerk-std()-Y         | mean value of standard deviation of FFT of Body Acceleration Jerk Signal on Y axis      | averaged over values grouped by (subject, activityDescription) |
fBodyAccJerk-std()-Z         | mean value of standard deviation of FFT of Body Acceleration Jerk Signal on Z axis      | averaged over values grouped by (subject, activityDescription) |
fBodyAccMag-mean()           | mean value of mean FFT of Body Acceleration Magnitude Signal                            | averaged over values grouped by (subject, activityDescription) |
fBodyAccMag-std()            | mean value of standard deviation of FFT of Body Acceleration Magnitude Signal           | averaged over values grouped by (subject, activityDescription) |
fBodyAcc-mean()-X            | mean value of mean FFT of Body Acceleration Signal on X axis                            | averaged over values grouped by (subject, activityDescription) |
fBodyAcc-mean()-Y            | mean value of mean FFT of Body Acceleration Signal on Y axis                            | averaged over values grouped by (subject, activityDescription) |
fBodyAcc-mean()-Z            | mean value of mean FFT of Body Acceleration Signal on Z axis                            | averaged over values grouped by (subject, activityDescription) |
fBodyAcc-std()-X             | mean value of standard deviation of FFT of Body Acceleration Signal on X axis           | averaged over values grouped by (subject, activityDescription) |
fBodyAcc-std()-Y             | mean value of standard deviation of FFT of Body Acceleration Signal on Y axis           | averaged over values grouped by (subject, activityDescription) |
fBodyAcc-std()-Z             | mean value of standard deviation of FFT of Body Acceleration Signal on Z axis           | averaged over values grouped by (subject, activityDescription) |
fBodyBodyAccJerkMag-mean()   | mean value of mean FFT of Body Acceleration Jerk Magnitude Signal    | averaged over values grouped by (subject, activityDescription) |
fBodyBodyAccJerkMag-std()    | mean value of standard deviation FFT of Body Acceleration Jerk Magnitude Signal     | averaged over values grouped by (subject, activityDescription) |
fBodyBodyGyroJerkMag-mean()  | mean value of mean FFT of Body Gyro Jerk Magnitude Signal   | averaged over values grouped by (subject, activityDescription) |
fBodyBodyGyroJerkMag-std()   | mean value of standard deviation FFT of Body Gyro Jerk Magnitude Signal     | averaged over values grouped by (subject, activityDescription) |
fBodyBodyGyroMag-mean()      | mean value of mean FFT of Body Gyro Magnitude Signal       | averaged over values grouped by (subject, activityDescription) |
fBodyBodyGyroMag-std()       | mean value of standard deviation of FFT of Body Gyro Magnitude Signal         | averaged over values grouped by (subject, activityDescription) |
fBodyGyro-mean()-X           | mean value of mean FFT of Body Gyro Signal on X axis                            | averaged over values grouped by (subject, activityDescription) |
fBodyGyro-mean()-Y           | mean value of mean FFT of Body Gyro Signal on Y axis            | averaged over values grouped by (subject, activityDescription) |
fBodyGyro-mean()-Z           | mean value of mean FFT of Body Gyro Signal on Z axis            | averaged over values grouped by (subject, activityDescription) |
fBodyGyro-std()-X            | mean value of standard deviation of FFT of Body Gyro Signal on X axis  | averaged over values grouped by (subject, activityDescription) |
fBodyGyro-std()-Y            | mean value of standard deviation of FFT of Body Gyro Signal on Y axis             | averaged over values grouped by (subject, activityDescription) |
fBodyGyro-std()-Z            | mean value of standard deviation of FFT of Body Gyro Signal on Z axis             | averaged over values grouped by (subject, activityDescription) |
tBodyAccJerkMag-mean()       | mean value of mean time domain of Body Acceleration Jerk Signal Magnitude       | averaged over values grouped by (subject, activityDescription) |
tBodyAccJerkMag-std()        | mean value of standard deviation of time domain of Body Acceleration Jerk Signal Magnitude          | averaged over values grouped by (subject, activityDescription) |
tBodyAccJerk-mean()-X        | mean value of mean time domain of Body Acceleration Jerk Signal on X axis         | averaged over values grouped by (subject, activityDescription) |
tBodyAccJerk-mean()-Y        | mean value of mean time domain of Body Acceleration Jerk Signal on Y axis          | averaged over values grouped by (subject, activityDescription) |
tBodyAccJerk-mean()-Z        | mean value of mean time domain of Body Acceleration Jerk Signal on Z axis         | averaged over values grouped by (subject, activityDescription) |
tBodyAccJerk-std()-X         | mean value of standard deviation of time domain of Body Acceleration Jerk Signal on X axis          | averaged over values grouped by (subject, activityDescription) |
tBodyAccJerk-std()-Y         | mean value of standard deviation of time domain of Body Acceleration Jerk Signal on Y axis          | averaged over values grouped by (subject, activityDescription) |
tBodyAccJerk-std()-Z         | mean value of standard deviation of time domain of Body Acceleration Jerk Signal on Z axis          | averaged over values grouped by (subject, activityDescription) |
tBodyAccMag-mean()           | mean value of mean time domain of Body Acceleration Signal Magnitude            | averaged over values grouped by (subject, activityDescription) |
tBodyAccMag-std()            | mean value of standard deviation of time domain of Body Acceleration Signal Magnitude             | averaged over values grouped by (subject, activityDescription) |
tBodyAcc-mean()-X            | mean value of mean time domain of Body Acceleration Signal on X axis | averaged over values grouped by (subject, activityDescription) |
tBodyAcc-mean()-Y            | mean value of mean time domain of Body Acceleration Signal on Y axis             | averaged over values grouped by (subject, activityDescription) |
tBodyAcc-mean()-Z            | mean value of mean time domain of Body Acceleration Signal on Z axis             | averaged over values grouped by (subject, activityDescription) |
tBodyAcc-std()-X             | mean value of standard deviation of time domain of Body Acceleration Signal on X axis              | averaged over values grouped by (subject, activityDescription) |
tBodyAcc-std()-Y             | mean value of standard deviation of time domain of Body Acceleration Signal on Y axis              | averaged over values grouped by (subject, activityDescription) |
tBodyAcc-std()-Z             | mean value of standard deviation of time domain of Body Acceleration Signal on Z axis              | averaged over values grouped by (subject, activityDescription) |
tBodyGyroJerkMag-mean()      | mean value of mean time domain of Body Gyro Jerk Signal Magnitude       | averaged over values grouped by (subject, activityDescription) |
tBodyGyroJerkMag-std()       | mean value of standard deviation of time domain of Body Gyro Jerk Signal Magnitude        | averaged over values grouped by (subject, activityDescription) |
tBodyGyroJerk-mean()-X       | mean value of mean time domain of Body Gyro Jerk Signal on X axis        | averaged over values grouped by (subject, activityDescription) |
tBodyGyroJerk-mean()-Y       | mean value of mean time domain of Body Gyro Jerk Signal on Y axis        | averaged over values grouped by (subject, activityDescription) |
tBodyGyroJerk-mean()-Z       | mean value of mean time domain of Body Gyro Jerk Signal on Z axis        | averaged over values grouped by (subject, activityDescription) |
tBodyGyroJerk-std()-X        | mean value of standard deviation of time domain of Body Gyro Jerk Signal on X axis         | averaged over values grouped by (subject, activityDescription) |
tBodyGyroJerk-std()-Y        | mean value of standard deviation of time domain of Body Gyro Jerk Signal on Y axis         | averaged over values grouped by (subject, activityDescription) |
tBodyGyroJerk-std()-Z        | mean value of standard deviation of time domain of Body Gyro Jerk Signal on Z axis  | averaged over values grouped by (subject, activityDescription) |
tBodyGyroMag-mean()          | mean value of mean of time domain of Body Gyro Signal Magnitude           | averaged over values grouped by (subject, activityDescription) |
tBodyGyroMag-std()           | mean value of standard deviation of time domain of Body Gyro Signal Magnitude             | averaged over values grouped by (subject, activityDescription) |
tBodyGyro-mean()-X           | mean value of mean of time domain of Body Gyro Signal on X axis            | averaged over values grouped by (subject, activityDescription) |
tBodyGyro-mean()-Y           | mean value of mean of time domain of Body Gyro Signal on Y axis            | averaged over values grouped by (subject, activityDescription) |
tBodyGyro-mean()-Z           | mean value of mean of time domain of Body Gyro Signal on Z axis            | averaged over values grouped by (subject, activityDescription) |
tBodyGyro-std()-X            | mean value of standard deviation of time domain of Body Gyro Signal on X axis             | averaged over values grouped by (subject, activityDescription) |
tBodyGyro-std()-Y            | mean value of standard deviation of time domain of Body Gyro Signal on Y axis             | averaged over values grouped by (subject, activityDescription) |
tBodyGyro-std()-Z            | mean value of standard deviation of time domain of Body Gyro Signal on Z axis             | averaged over values grouped by (subject, activityDescription) |
tGravityAccMag-mean()        | mean value of mean of time domain of Gravity Acceleration Signal Magnitude        | averaged over values grouped by (subject, activityDescription) |
tGravityAccMag-std()         | mean value of standard deviation of time domain of Gravity Acceleration Signal Magnitude          | averaged over values grouped by (subject, activityDescription) |
tGravityAcc-mean()-X         | mean value of mean of time domain of Gravity Acceleration Signal on X axis | averaged over values grouped by (subject, activityDescription) |
tGravityAcc-mean()-Y         | mean value of mean of time domain of Gravity Acceleration Signal on Y axis          | averaged over values grouped by (subject, activityDescription) |
tGravityAcc-mean()-Z         | mean value of mean of time domain of Gravity Acceleration Signal on Z axis  | averaged over values grouped by (subject, activityDescription) |
tGravityAcc-std()-X          | mean value of standard deviation of time domain of Gravity Acceleration Signal on X axis           | averaged over values grouped by (subject, activityDescription) |
tGravityAcc-std()-Y          | mean value of standard deviation of time domain of Gravity Acceleration Signal on Y axis          | averaged over values grouped by (subject, activityDescription) |
tGravityAcc-std()-Z          | mean value of standard deviation of time domain of Gravity Acceleration Signal on Z axis  | averaged over values grouped by (subject, activityDescription) |
