
#
# First make sure the datasets are available
#
if (!file.exists(file.path(getwd(),"UCI HAR Dataset/test/X_test.txt")) |
    !file.exists(file.path(getwd(),"UCI HAR Dataset/test/y_test.txt")) |
    !file.exists(file.path(getwd(),"UCI HAR Dataset/test/subject_test.txt")) |
    !file.exists(file.path(getwd(),"UCI HAR Dataset/train/X_train.txt")) |
    !file.exists(file.path(getwd(),"UCI HAR Dataset/train/y_train.txt")) |
    !file.exists(file.path(getwd(),"UCI HAR Dataset/train/subject_train.txt"))) {

  print("Unable to load the complete dataset")
  print("Please download the data from:")
  print("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
  print("and unzip it into your working directory")

  stop("Script halted")
}

#
# Load the test and training datasets
#
acc_data_test <- read.table(file.path(getwd(),"UCI HAR Dataset/test/X_test.txt"))
act_data_test <- read.table(file.path(getwd(),"UCI HAR Dataset/test/y_test.txt"))
sub_data_test <- read.table(file.path(getwd(),"UCI HAR Dataset/test/subject_test.txt"))

acc_data_train <- read.table(file.path(getwd(),"UCI HAR Dataset/train/X_train.txt"))
act_data_train <- read.table(file.path(getwd(),"UCI HAR Dataset/train/y_train.txt"))
sub_data_train <- read.table(file.path(getwd(),"UCI HAR Dataset/train/subject_train.txt"))

#
# Load the descriptive labels for activities and features
#
feature_labels <- read.table(file.path(getwd(),"UCI HAR Dataset/features.txt"))
feature_labels <- feature_labels$V2

activity_labels <- read.table(file.path(getwd(),"UCI HAR Dataset/activity_labels.txt"))
activity_labels <- activity_labels$V2

#
# Label columns with some meaningful names
# (Step 4)
#
names(acc_data_train) <- feature_labels
names(act_data_train) <- "activity_id"
names(sub_data_train) <- "subject_id"

names(acc_data_test) <- feature_labels
names(act_data_test) <- "activity_id"
names(sub_data_test) <- "subject_id"

#
# Combine subject, activity and accelerometer columns
# (Step 1)
#
training_data <- cbind(sub_data_train, act_data_train, acc_data_train)
test_data <- cbind(sub_data_test, act_data_test, acc_data_test)

#
# Merge the test and the training data together
# (more of Step 1)
#
full_dataset <- rbind(training_data, test_data)

#
# Extract the mean and standard deviation for each measurement
# (Step 2)
#
match_terms <- c("mean","std")
matches <- unique (grep(paste(match_terms,collapse="|"), feature_labels, value=TRUE))
std_m_data <- full_dataset[,matches]

#
# Create a final dataset that includes only the standard deviation, mean and
# our subject_id and activity_id
#
final_dataset <- std_m_data
final_dataset$subject_id <- full_dataset$subject_id
final_dataset$activity_id <- full_dataset$activity_id

#
# Label the activity rows with a descriptive name
# (Step 3)
#
final_dataset$activity <- activity_labels[final_dataset$activity_id]

#
# Write out the non-aggegated version of the data
#
write.table(final_dataset, file="tidy_data.txt", row.name=FALSE)

#
# Write out the aggregated version of the data
#
final_dataset$activity_id <- NULL
aggregate_dataset <- aggregate(.~subject_id+activity, final_dataset, mean)
write.table(aggregate_dataset, file="tidy_data_aggregate.txt", row.name=FALSE)
