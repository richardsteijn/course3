 
## Codebook 
The datafile Summarydata.txt summarizes a selection of variables from the dataset "Human Activity Recognition Using Smartphones Dataset". 

This set can be downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data set was originaly divided in a training part and a test part. These parts are combined into one dataset. This dataset is in turn summarized as described in the readme file.

Only the features that are means or standard deviations are selected from the base dataset. 

The measurements in the base data set are converted from a scientific notation to a 'regular' notation. A small loss of accuracy is caused by this. 

From the selected features the mean is calculated for each combination of activity and subject in the base dataset.
 
The datafile consists of a dataset with two columns for which several measurements are summarized. 

Activityname - the description of the activity where the observations are associated to.<br>Subject - The subject that was observed.

For each combination of activity and subject the means of 79 measures are given.

tBodyAcc.mean...X<br>tBodyAcc.mean...Y<br>tBodyAcc.mean...Z<br>tGravityAcc.mean...X<br>tGravityAcc.mean...Y<br>tGravityAcc.mean...Z<br>tBodyAccJerk.mean...X<br>tBodyAccJerk.mean...Y<br>tBodyAccJerk.mean...Z<br>tBodyGyro.mean...X<br>tBodyGyro.mean...Y<br>tBodyGyro.mean...Z<br>tBodyGyroJerk.mean...X<br>tBodyGyroJerk.mean...Y<br>tBodyGyroJerk.mean...Z<br>tBodyAccMag.mean..<br>tGravityAccMag.mean..<br>tBodyAccJerkMag.mean..<br>tBodyGyroMag.mean..<br>tBodyGyroJerkMag.mean..<br>fBodyAcc.mean...X<br>fBodyAcc.mean...Y<br>fBodyAcc.mean...Z<br>fBodyAcc.meanFreq...X<br>fBodyAcc.meanFreq...Y<br>fBodyAcc.meanFreq...Z<br>fBodyAccJerk.mean...X<br>fBodyAccJerk.mean...Y<br>fBodyAccJerk.mean...Z<br>fBodyAccJerk.meanFreq...X<br>fBodyAccJerk.meanFreq...Y<br>fBodyAccJerk.meanFreq...Z<br>fBodyGyro.mean...X<br>fBodyGyro.mean...Y<br>fBodyGyro.mean...Z<br>fBodyGyro.meanFreq...X<br>fBodyGyro.meanFreq...Y<br>fBodyGyro.meanFreq...Z<br>fBodyAccMag.mean..<br>fBodyAccMag.meanFreq..<br>fBodyBodyAccJerkMag.mean..<br>fBodyBodyAccJerkMag.meanFreq..<br>fBodyBodyGyroMag.mean..<br>fBodyBodyGyroMag.meanFreq..<br>fBodyBodyGyroJerkMag.mean..<br>fBodyBodyGyroJerkMag.meanFreq..<br>tBodyAcc.std...X<br>tBodyAcc.std...Y<br>tBodyAcc.std...Z<br>tGravityAcc.std...X<br>tGravityAcc.std...Y<br>tGravityAcc.std...Z<br>tBodyAccJerk.std...X<br>tBodyAccJerk.std...Y<br>tBodyAccJerk.std...Z<br>tBodyGyro.std...X<br>tBodyGyro.std...Y<br>tBodyGyro.std...Z<br>tBodyGyroJerk.std...X<br>tBodyGyroJerk.std...Y<br>tBodyGyroJerk.std...Z<br>tBodyAccMag.std..<br>tGravityAccMag.std..<br>tBodyAccJerkMag.std..<br>tBodyGyroMag.std..<br>tBodyGyroJerkMag.std..<br>fBodyAcc.std...X<br>fBodyAcc.std...Y<br>fBodyAcc.std...Z<br>fBodyAccJerk.std...X<br>fBodyAccJerk.std...Y<br>fBodyAccJerk.std...Z<br>fBodyGyro.std...X<br>fBodyGyro.std...Y<br>fBodyGyro.std...Z<br>fBodyAccMag.std..<br>fBodyBodyAccJerkMag.std..<br>fBodyBodyGyroMag.std..<br>fBodyBodyGyroJerkMag.std..