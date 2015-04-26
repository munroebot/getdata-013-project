## Getting and Cleaning Data Course Project

### Overview
This git repository contains the necessary instructions and R script to manipulate and analyze the accelerometer data gathered from the study on [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

Per the requirements of the course project, the R script **run_analysis.R** will do the following:

1. Merges the training and the test sets to create one data set.
1. Extracts only the measurements on the mean and standard deviation for each measurement.
1. Uses descriptive activity names to name the activities in the data set
1. Appropriately labels the data set with descriptive variable names.
1. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### How To Use

1. Clone this repository to your computer and change into the repo directory:

  ```
  $ git clone git@github.com:munroebot/getdata-013-project.git
  $ cd getdata-013-project
  ```

1. Download the HAR dataset from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and save it into the top level of this git repository.
1. Unzip the dataset, it should create a directory called **UCI HAR Dataset** and underneath it should be the following structure:

  ```
UCI HAR Dataset
UCI HAR Dataset/activity_labels.txt
UCI HAR Dataset/features.txt
UCI HAR Dataset/features_info.txt
UCI HAR Dataset/README.txt
UCI HAR Dataset/test
UCI HAR Dataset/test/Inertial Signals
UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt
UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt
UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt
UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt
UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt
UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt
UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt
UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt
UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt
UCI HAR Dataset/test/subject_test.txt
UCI HAR Dataset/test/X_test.txt
UCI HAR Dataset/test/y_test.txt
UCI HAR Dataset/train
UCI HAR Dataset/train/Inertial Signals
UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt
UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt
UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt
UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt
UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt
UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt
UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt
UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt
UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt
UCI HAR Dataset/train/subject_train.txt
UCI HAR Dataset/train/X_train.txt
UCI HAR Dataset/train/y_train.txt
  ```

1. Run the script to process the data:
  ```
  $ r --no-save < run_analysis.R
  ```
1. This will create two output files: ***tidy_data.txt*** and ***tidy_data_aggregate.txt***.  These two files are the processed datasets.  
   * ***tidy_data.txt*** contains the complete mean and standard deviation dataset for each subject performing each activity.  
   * ***tidy_data_aggregate.txt*** is the aggregated mean and standard deviation dataset that breaks the data down for each activity on a per subject basis.
