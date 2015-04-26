## Getting and Cleaning Data Course Project

### Introduction
As referenced from the Coursera project page, the original source for the raw data comes from:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Running the script `run_analysis.R` will produce two dataset files: ***tidy_data.txt*** and ***tidy_data_aggregate.txt***.  

* ***tidy_data.txt*** contains the complete mean and standard deviation dataset for each subject performing each activity.  

* ***tidy_data_aggregate.txt*** is the aggregated mean and standard deviation dataset that breaks the data down for each activity on a per subject basis.

  Please note that the column names for both files are identical

Please see [README.md](README.md) for more information about the project.

---

### Code Book

The columns in the tidy_data sets are defined follows.  The mean and standard deviation columns are postfixed with -mean() and -std() respectively.

*** Subject and Activity ***

* subject_id: The subject performing the experiment
* activity: The activity performed (WALKING, STANDING, etc)

*** Real-time Linear Acceleration ***
* tBodyAcc-mean()-X
* tBodyAcc-mean()-Y
* tBodyAcc-mean()-Z
* tBodyAcc-std()-X
* tBodyAcc-std()-Y
* tBodyAcc-std()-Z

*** Real-time Angular Acceleration ***
* tGravityAcc-mean()-X
* tGravityAcc-mean()-Y
* tGravityAcc-mean()-Z
* tGravityAcc-std()-X
* tGravityAcc-std()-Y
* tGravityAcc-std()-Z

*** Real-time Linear Jerk Acceleration ***
* tBodyAccJerk-mean()-X
* tBodyAccJerk-mean()-Y
* tBodyAccJerk-mean()-Z
* tBodyAccJerk-std()-X
* tBodyAccJerk-std()-Y
* tBodyAccJerk-std()-Z

* tBodyGyro-mean()-X
* tBodyGyro-mean()-Y
* tBodyGyro-mean()-Z
* tBodyGyro-std()-X
* tBodyGyro-std()-Y
* tBodyGyro-std()-Z

* tBodyGyroJerk-mean()-X
* tBodyGyroJerk-mean()-Y
* tBodyGyroJerk-mean()-Z
* tBodyGyroJerk-std()-X
* tBodyGyroJerk-std()-Y
* tBodyGyroJerk-std()-Z

* tBodyAccMag-mean()
* tBodyAccMag-std()

* tGravityAccMag-mean()
* tGravityAccMag-std()

* tBodyAccJerkMag-mean()
* tBodyAccJerkMag-std()

* tBodyGyroMag-mean()
* tBodyGyroMag-std()

* tBodyGyroJerkMag-mean()
* tBodyGyroJerkMag-std()

*** Fast Fourier Transformed Linear Acceleration ***
* fBodyAcc-mean()-X
* fBodyAcc-mean()-Y
* fBodyAcc-mean()-Z
* fBodyAcc-std()-X
* fBodyAcc-std()-Y
* fBodyAcc-std()-Z

* fBodyAcc-meanFreq()-X
* fBodyAcc-meanFreq()-Y
* fBodyAcc-meanFreq()-Z

*** Fast Fourier Transformed Angular Acceleration ***
* fBodyAccJerk-mean()-X
* fBodyAccJerk-mean()-Y
* fBodyAccJerk-mean()-Z
* fBodyAccJerk-std()-X
* fBodyAccJerk-std()-Y
* fBodyAccJerk-std()-Z

* fBodyAccJerk-meanFreq()-X
* fBodyAccJerk-meanFreq()-Y
* fBodyAccJerk-meanFreq()-Z

* fBodyGyro-mean()-X
* fBodyGyro-mean()-Y
* fBodyGyro-mean()-Z
* fBodyGyro-std()-X
* fBodyGyro-std()-Y
* fBodyGyro-std()-Z

* fBodyGyro-meanFreq()-X
* fBodyGyro-meanFreq()-Y
* fBodyGyro-meanFreq()-Z

* fBodyAccMag-mean()
* fBodyAccMag-std()
* fBodyAccMag-meanFreq()

* fBodyBodyAccJerkMag-mean()
* fBodyBodyAccJerkMag-std()

* fBodyBodyAccJerkMag-meanFreq()

* fBodyBodyGyroMag-mean()
* fBodyBodyGyroMag-std()
* fBodyBodyGyroMag-meanFreq()

* fBodyBodyGyroJerkMag-mean()
* fBodyBodyGyroJerkMag-std()
* fBodyBodyGyroJerkMag-meanFreq()
