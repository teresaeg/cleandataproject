Codebook for Getting & Cleaning Data Project

Data set taken and modified from dat collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

See below all of the variable names for more info from the original experiment.

Variable Name: 'subject"
Variable Description: The subject number from the experiment.  The original data describes this as "An identifier of the subject who carried out the experiment."  There were 30 subjects in the experiment.
Variable Type: integer in R, technically categorical since each subject is a different person with no ordering
Variable Values: integers 1 through 30

Variable Name: "activityname"
Variable Description: The type of activity that the subject did in the experiment while the data was collected. There were 6 activities in the experiment.
Variable Type: Factor in R, technically categorical since each activity is different with no ordering
Variable Values: Factors (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)


For all mean and std variables...
The original data features were normalized and bounded within [-1,1].
The original data had multiple measurements for each person during each activity.
Our code to create this new data set found the mean of these different measurements
grouped by each person and each activity, so all of our mean and std variables are
means of the multiple measurements taken from the original data.

Variable Name: "timebodyaccmeanx"
Variable Description: The mean of the measurements of the mean time domain body signal captured from the accelerometer in the X direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name: "timebodyaccmeany"
Variable Description: The mean of the measurements of the mean time domain body signal captured from the accelerometer in the Y direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name: "timebodyaccmeanz"
Variable Description: The mean of the measurements of the mean time domain body signal captured from the accelerometer in the Z direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name: "timebodyaccstdx"
Variable Description: The mean of the measurements of the std of the time domain body signal captured from the accelerometer in the X direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name: "timebodyaccstdy"
Variable Description: The mean of the measurements of the std of the time domain body signal captured from the accelerometer in the Y direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name: "timebodyaccstdz"
Variable Description: The mean of the measurements of the std of the time domain body signal captured from the accelerometer in the Z direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name: "timegravityaccmeanx"
Variable Description: The mean of the measurements of the mean time domain gravity signal captured from the accelerometer in the X direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name: "timegravityaccmeany"
Variable Description: The mean of the measurements of the mean time domain gravity signal captured from the accelerometer in the Y direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name: "timegravityaccmeanz"
Variable Description: The mean of the measurements of the mean time domain gravity signal captured from the accelerometer in the Z direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name: "timegravityaccstdx"
Variable Description: The mean of the measurements of the std of the time domain gravity signal captured from the accelerometer in the X direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name: "timegravityaccstdy"
Variable Description: The mean of the measurements of the std of the time domain gravity signal captured from the accelerometer in the Y direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name: "timegravityaccstdz"
Variable Description: The mean of the measurements of the std of the time domain gravity signal captured from the accelerometer in the Z direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"timebodyaccjerkmeanx" 
Variable Description: The mean of the measurements of the mean of the time domain body linear acceleration jerk signal captured from the accelerometer in the X direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"timebodyaccjerkmeany" 
Variable Description: The mean of the measurements of the mean of the time domain body linear acceleration jerk signal captured from the accelerometer in the Y direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"timebodyaccjerkmeanz" 
Variable Description: The mean of the measurements of the mean of the time domain body linear acceleration jerk signal captured from the accelerometer in the Z direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"timebodyaccjerkstdx" 
Variable Description: The mean of the measurements of the std of the time domain body linear acceleration jerk signal captured from the accelerometer in the X direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"timebodyaccjerkstdy" 
Variable Description: The mean of the measurements of the std of the time domain body linear acceleration jerk signal captured from the accelerometer in the Y direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"timebodyaccjerkstdz" 
Variable Description: The mean of the measurements of the std of the time domain body linear acceleration jerk signal captured from the accelerometer in the Z direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"timebodygyromeanx"  
Variable Description: The mean of the measurements of the mean of the time domain angular velocity signal captured from the gyroscope in the X direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"timebodygyromeany"  
Variable Description: The mean of the measurements of the mean of the time domain angular velocity signal captured from the gyroscope in the Y direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"timebodygyromeanz"  
Variable Description: The mean of the measurements of the mean of the time domain angular velocity signal captured from the gyroscope in the Z direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"timebodygyrostdnx"  
Variable Description: The mean of the measurements of the std of the time domain angular velocity signal captured from the gyroscope in the X direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"timebodygyrostdy"  
Variable Description: The mean of the measurements of the std of the time domain angular velocity signal captured from the gyroscope in the Y direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"timebodygyrostdz"  
Variable Description: The mean of the measurements of the std of the time domain angular velocity signal captured from the gyroscope in the Z direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"timebodygyrojerkmeanx"  
Variable Description: The mean of the measurements of the mean of the time domain angular velocity jerk signal captured from the gyroscope in the X direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"timebodygyrojerkmeany"  
Variable Description: The mean of the measurements of the mean of the time domain angular velocity jerk signal captured from the gyroscope in the Y direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"timebodygyrojerkmeanz"  
Variable Description: The mean of the measurements of the mean of the time domain angular velocity jerk signal captured from the gyroscope in the Z direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"timebodygyrojerkstdx"  
Variable Description: The mean of the measurements of the std of the time domain angular velocity jerk signal captured from the gyroscope in the X direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"timebodygyrojerkstdy"  
Variable Description: The mean of the measurements of the std of the time domain angular velocity jerk signal captured from the gyroscope in the Y direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"timebodygyrojerkstdz"  
Variable Description: The mean of the measurements of the std of the time domain angular velocity jerk signal captured from the gyroscope in the Z direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"timebodyaccmagmean" 
Variable Description: The mean of the measurements of the mean of the time domain acceleration magnitude signal captured from the accelerometer - the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"timebodyaccmagstd" 
Variable Description: The mean of the measurements of the std of the time domain acceleration magnitude signal captured from the accelerometer - the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"timegravityaccmagmean" 
Variable Description: The mean of the measurements of the mean of the time domain gravity acceleration magnitude signal captured from the accelerometer - the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"timegravityaccmagstd" 
Variable Description: The mean of the measurements of the std of the time domain gravity acceleration magnitude signal captured from the accelerometer - the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"timebodyaccjerkmagmean"  
Variable Description: The mean of the measurements of the mean of the time domain jerk acceleration magnitude signal captured from the accelerometer - the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"timebodyaccjerkmagstd" 
Variable Description: The mean of the measurements of the std of the time domain jerk acceleration magnitude signal captured from the accelerometer - the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"timebodygyromagmean" 
Variable Description: The mean of the measurements of the mean of the time domain angular velocity magnitude signal captured from the accelerometer - the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"timebodygyromagstd" 
Variable Description: The mean of the measurements of the std of the time domain angular velocity magnitude signal captured from the accelerometer - the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"timebodygyrojerkaccmagmean" 
Variable Description: The mean of the measurements of the mean of the time domain angular velocity jerk magnitude signal captured from the accelerometer - the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"timebodygyrojerkmagstd" 
Variable Description: The mean of the measurements of the std of the time domain angular velocity jerk magnitude signal captured from the accelerometer - the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name: "freqbodyaccmeanx"
Variable Description: The mean of the measurements of the mean frequency domain body signal captured from the accelerometer in the X direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name: "freqbodyaccmeany"
Variable Description: The mean of the measurements of the mean frequency domain body signal captured from the accelerometer in the Y direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name: "freqbodyaccmeanz"
Variable Description: The mean of the measurements of the mean frequency domain body signal captured from the accelerometer in the Z direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name: "freqbodyaccstdx"
Variable Description: The mean of the measurements of the std of the frequency domain body signal captured from the accelerometer in the X direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name: "freqbodyaccstdy"
Variable Description: The mean of the measurements of the std of the frequency domain body signal captured from the accelerometer in the Y direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name: "freqbodyaccstdz"
Variable Description: The mean of the measurements of the std of the frequency domain body signal captured from the accelerometer in the Z direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name: "freqgravityaccmeanx"
Variable Description: The mean of the measurements of the mean frequency domain gravity signal captured from the accelerometer in the X direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name: "freqgravityaccmeany"
Variable Description: The mean of the measurements of the mean frequency domain gravity signal captured from the accelerometer in the Y direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name: "freqgravityaccmeanz"
Variable Description: The mean of the measurements of the mean frequency domain gravity signal captured from the accelerometer in the Z direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name: "freqgravityaccstdx"
Variable Description: The mean of the measurements of the std of the frequency domain gravity signal captured from the accelerometer in the X direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name: "freqgravityaccstdy"
Variable Description: The mean of the measurements of the std of the frequency domain gravity signal captured from the accelerometer in the Y direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name: "freqgravityaccstdz"
Variable Description: The mean of the measurements of the std of the frequency domain gravity signal captured from the accelerometer in the Z direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"freqbodyaccjerkmeanx" 
Variable Description: The mean of the measurements of the mean of the frequency domain body linear acceleration jerk signal captured from the accelerometer in the X direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"freqbodyaccjerkmeany" 
Variable Description: The mean of the measurements of the mean of the frequency domain body linear acceleration jerk signal captured from the accelerometer in the Y direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"freqbodyaccjerkmeanz" 
Variable Description: The mean of the measurements of the mean of the frequency domain body linear acceleration jerk signal captured from the accelerometer in the Z direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"freqbodyaccjerkstdx" 
Variable Description: The mean of the measurements of the std of the frequency domain body linear acceleration jerk signal captured from the accelerometer in the X direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"freqbodyaccjerkstdy" 
Variable Description: The mean of the measurements of the std of the frequency domain body linear acceleration jerk signal captured from the accelerometer in the Y direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"freqbodyaccjerkstdz" 
Variable Description: The mean of the measurements of the std of the frequency domain body linear acceleration jerk signal captured from the accelerometer in the Z direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"freqbodygyromeanx"  
Variable Description: The mean of the measurements of the mean of the frequency domain angular velocity signal captured from the gyroscope in the X direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"freqbodygyromeany"  
Variable Description: The mean of the measurements of the mean of the frequency domain angular velocity signal captured from the gyroscope in the Y direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"freqbodygyromeanz"  
Variable Description: The mean of the measurements of the mean of the frequency domain angular velocity signal captured from the gyroscope in the Z direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"freqbodygyrostdnx"  
Variable Description: The mean of the measurements of the std of the frequency domain angular velocity signal captured from the gyroscope in the X direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"freqbodygyrostdy"  
Variable Description: The mean of the measurements of the std of the frequency domain angular velocity signal captured from the gyroscope in the Y direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"freqbodygyrostdz"  
Variable Description: The mean of the measurements of the std of the frequency domain angular velocity signal captured from the gyroscope in the Z direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"freqbodygyrojerkmeanx"  
Variable Description: The mean of the measurements of the mean of the frequency domain angular velocity jerk signal captured from the gyroscope in the X direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"freqbodygyrojerkmeany"  
Variable Description: The mean of the measurements of the mean of the frequency domain angular velocity jerk signal captured from the gyroscope in the Y direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"freqbodygyrojerkmeanz"  
Variable Description: The mean of the measurements of the mean of the frequency domain angular velocity jerk signal captured from the gyroscope in the Z direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"freqbodygyrojerkstdx"  
Variable Description: The mean of the measurements of the std of the frequency domain angular velocity jerk signal captured from the gyroscope in the X direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"freqbodygyrojerkstdy"  
Variable Description: The mean of the measurements of the std of the frequency domain angular velocity jerk signal captured from the gyroscope in the Y direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"freqbodygyrojerkstdz"  
Variable Description: The mean of the measurements of the std of the frequency domain angular velocity jerk signal captured from the gyroscope in the Z direction
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"freqbodyaccmagmean" 
Variable Description: The mean of the measurements of the mean of the frequency domain acceleration magnitude signal captured from the accelerometer - the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"freqbodyaccmagstd" 
Variable Description: The mean of the measurements of the std of the frequency domain acceleration magnitude signal captured from the accelerometer - the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"freqgravityaccmagmean" 
Variable Description: The mean of the measurements of the mean of the frequency domain gravity acceleration magnitude signal captured from the accelerometer - the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"freqgravityaccmagstd" 
Variable Description: The mean of the measurements of the std of the frequency domain gravity acceleration magnitude signal captured from the accelerometer - the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"freqbodyaccjerkmagmean"  
Variable Description: The mean of the measurements of the mean of the frequency domain jerk acceleration magnitude signal captured from the accelerometer - the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"freqbodyaccjerkmagstd" 
Variable Description: The mean of the measurements of the std of the frequency domain jerk acceleration magnitude signal captured from the accelerometer - the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"freqbodygyromagmean" 
Variable Description: The mean of the measurements of the mean of the frequency domain angular velocity magnitude signal captured from the accelerometer - the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"freqbodygyromagstd" 
Variable Description: The mean of the measurements of the std of the frequency domain angular velocity magnitude signal captured from the accelerometer - the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"freqbodygyrojerkaccmagmean" 
Variable Description: The mean of the measurements of the mean of the frequency domain angular velocity jerk magnitude signal captured from the accelerometer - the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]

Variable Name:"freqbodygyrojerkmagstd" 
Variable Description: The mean of the measurements of the std of the frequency domain angular velocity jerk magnitude signal captured from the accelerometer - the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
Variable Type: numeric
Variable Values: numbers bounded within [-1,1]







From the original data set...
"==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. "

"Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions."



