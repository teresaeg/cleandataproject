## Getting and Cleaning Data Course Project
## You should create one R script called run_analysis.R that does the following. 

## load in the relevant libraries we might need
library(dplyr)
library(tidyr)
library(plyr)

## STEP 1 - Merges the training and the test sets to create one data set.

## Read in the relevant files from the two folders
x_test <- read.table("test/X_test.txt", header = FALSE)
y_test <- read.table("test/y_test.txt", header = FALSE)
subject_test <- read.table("test/subject_test.txt", header = FALSE)
x_train <- read.table("train/X_train.txt", header = FALSE)
y_train <- read.table("train/y_train.txt", header = FALSE)
subject_train <- read.table("train/subject_train.txt", header = FALSE)
features <- read.table("features.txt", header = FALSE)
activity_labels <- read.table("activity_labels.txt", header = FALSE)

# combine each set of test data with its train data to make the complete data sets
y_data <- rbind(y_test, y_train)
x_data <- rbind(x_test, x_train)
subject_data <- rbind(subject_test, subject_train)

# use the features data to name the variables in x_data (also STEP 4)
colnames(x_data) <- features[[2]]

# add on the subject & activity data to create the whole data set
total_data <- cbind(subject_data, y_data, x_data)

# name the first two columns so we know what they are (also STEP 4)
colnames(total_data)[1] <- "subject"
colnames(total_data)[2] <- "activitynumber"

# now total_data is the combined datasets (with variable names, even though that's STEP 4)


## STEP 2 - Extracts only the measurements on the mean and standard deviation 
## for each measurement.

# figure out which variables are means
mean_variables <- grep("mean()", colnames(total_data)) # includes mean() & meanFreq()
meanFreq_variables <- grep("meanFreq()", colnames(total_data)) # find meanFreq()
mean_variables <- setdiff(mean_variables, meanFreq_variables) # take out the meanFreq()

# figure out which variables are standard deviations
std_variables <- grep("std()", colnames(total_data))

# combine the mean and std lists, with 1 aka subject and 2 aka activity_number
# to create the list of all the variables we want to keep
which_variables <- sort(c(1, 2, c(mean_variables, std_variables)))

# subset the data with only the variables we want
subset_data <- total_data[which_variables]

# now subset_data includes the subject, activitynumber, and only the mean and std measurements


## STEP 3 - Uses descriptive activity names to name the activities in the data set

# name the variables in activity_labels so we can merge the datasets
colnames(activity_labels) <- c("activitynumber", "activityname")

# merge the datasets to include the activity names
subset_data <- merge(subset_data, activity_labels)

# now subset_data includes the subject, activitynumber, mean & std measurements, and 
# the activity name (although the observations are mixed up by the merge)


## STEP 4 - Appropriately labels the data set with descriptive variable names. 

# We've already labeled the variables with their given names from the original dataset
# in the previous steps (because I like variable labels earlier rather than later!)
# but let's 'tidy' the variable names

# According to the video slides, variable names should not have underscores, dots, etc
# First, let's get rid of dashes
colnames(subset_data) <- gsub("-","", colnames(subset_data))

# Next, let's get rid of the parentheses
colnames(subset_data) <- gsub("()","", colnames(subset_data), fixed = T)

# Now, let's make the names more descriptive
# First, let's clarify the t and the f at the beginning of the names
colnames(subset_data) <- sub("^t", "time", colnames(subset_data))
colnames(subset_data) <- sub("^f", "freq", colnames(subset_data))

# The video slides say to have the variables be all lower case,
# So let's make them all lower case
colnames(subset_data) <- tolower(colnames(subset_data))


## STEP 5 - From the data set in step 4, creates a second, independent tidy data set 
## with the average of each variable for each activity and each subject.

# The new data set will have 30 (# of subjects) * 6 (# of activities) = 180 observations
# with the mean or average value for each variable for each subject & activity

# We will take our subset_data, organize it by subject and activitynumber, and
# then take the mean of all the other columns.
new_data_set <- ddply(subset_data, .(subject, activitynumber), numcolwise(mean))

# Last but not least, export the new data set!
write.table(new_data_set, "new_data_set.txt", sep="\t",  row.name=FALSE) 

