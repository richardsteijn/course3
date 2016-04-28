 
## Run_analysis.R
The script called run_analysis.R  does the folowing:

1.	Set the working directory to the path where the the 'UCI HAR Dataset' is extracted.
  
  
2.	Load the file features.txt into a data frame (source for variable names in the dataset that will be produced.).  
  
3.	Load the file activity_labels.txt into a data frame (source for descriptions of the several activities of the subjects  during which observations have been collected)
  
4.	Load data from the training set:
  
    *	Load subject info (./train/subject_train.txt) 
  
    *	Load measure info (./train /X_train.txt) and extract all numeric data from it 
  
    *	Load activity info (./train /Y_train.txt) 
  
    *	Merge the three resulting data frames to one training data frame (every data frame provides for 1 or more columns in the merged data frame)
  
5.	Load data from the test set (in the same way as step 4):
    *	Load subject info (./test/subject_test.txt) 
    *	Load measure info (./test/X_test.txt) and extract all numeric data from it 
    *	Load activity info (./test/Y_test.txt) 
    *	Merge the three resulting data frames to one test data frame (every data frame provides for 1 or more columns in the merged data frame)
6.	Merge the training and test data frames from step 4 and 5 to one dataframe.
7.	Add activity labels this data frame by joining it to the data frame from step 3 by activity id.
8.	Set the names of the variables in the resulting data frame to 'Subject', 'Activityname',  and the lables that are extracted from the features file from step 2.
9.	From the resulting data frame only select the variables with names:  'Subject', 'Activityname' and the variables with 'mean' or 'std' in the name. Store the result in a new data frame.
10.	Group the resulting data frame by 'Subject' and 'Activityname' and calculate the mean of the remaining variables in the data frame.
11.	Write the resulting data frame to the file ./../work/Summarydata.txt 
