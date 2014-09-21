Info for Getting & Cleaning Data Project
================

Note: To read the final text data file, you can read it into R using
data <- read.table(file_path, header = TRUE) where file_path is 
"new_data_set.txt" or whereever you put the text file.

Repo for my project files for Coursera Getting and Cleaning Data
This README explains how all of the scripts work and how they are connected

All of the R code is in run_analysis.R, which is fairly well commented,
but let's go over what happens, and some of the choices I made.

STEP 1-
First we read in all of the data.  Similar to how the zip file from the 
course website downloads, I assume that the test and train data files
are in two folders (test and train), and that the features and activities
are just in your working directory.  I chose not to bother with the 
Inertial Signals data since we're just going to get rid of it in STEP 2.

Next we use row bind to stitch together the data from the test subjects
and the training subjects.

Next we name the variables on x_data - this is technically STEP 4 in 
the project instructions, but I found it easier to have the variables
named earlier rather than later so that I knew what I was looking at.

Then we column bind together the subject, activity, and x data to get
the complete data set.  (And I also chose to name the variables for 
subject and activity, again so I know what I'm looking at.)

So now we have STEP 1 complete with the whole data set (which already
has some of STEP 4 with the variable names)

STEP 2-
Now we just want the x variables that are means or standard deviations.

We use grep to find the variables that have "mean()" in them, although
as I found out, that also selects for "meanFreq()", which I decided is
not one of the means that we're looking for, so we also have to 'subtract'
out the variables that have "meanFreq()"

Then we use grep to find the variables that have "std()" in them.

Then we combine the mean and the std variable numbers, along with one 
and two (to select the subject and the activity number), to get all of 
the variables that we want, and then we subset the whole data set.

Now we have STEP 2 complete with a subsetted data set of only the
subject, activity number, and the mean & std variables

STEP 3-
Now we want to name the activity levels with the names given in the
activity_labels data.  I chose to create a new variable called activityname
in which to put the names.  And I merged our subsetted data set with the
activity_labels data along the activitynumber variable.  This does reorder
the observations, but since we have all of the data we need collected 
already, it doesn't matter if the observations are reordered.  (However,
this would not work if we tried to do it before merging the test and train
data, because then the lining up of the observations wouldn't work properly.)

STEP 4-
Now we want to label the variables.  We've already done this to some extent
back in STEP 1, because I like having variable names earlier rather than later.
But the x variable names are kinda confusing and not 'tidy', so we'll make them
nicer, first by getting rid of non-alphabetic characters.  Then by making some
of the abbreviations clearer (although this does make the variable names longer,
so I chose not to make everything longer).  And lastly by making everything
lower case.

STEP 5-
Lastly we use ddply to group the data by subject and activity and find the means 
of each x variable column.  
(I was very grateful for this comment thread, which helped me to see which commands
to use after trying lots of things that didn't work!  
https://class.coursera.org/getdata-007/forum/thread?thread_id=215)

And then we write the new data set to a text file.

Note: To read the final text data file, you can read it into R using
data <- read.table(file_path, header = TRUE) where file_path is 
"new_data_set.txt" or whereever you put the text file.


