### Usage of analysis script
In order to apply run.analysis.R script to raw data set you should set your working directory to the folder where the raw data set is unzipped(it contains folders "train", "test" and four txt files) and put run.analysis.R in that directory.
Output of script contains two data sets: mergedSet(10299x68) and tidyset(180x68) (that's what needed as a result of final step of the project). 
All the intermediate data frames are removed during execution
### Analysis script description
Run.analysis.R script does following steps (Numbered according to order given in the course project description):
####Step 1: Merges the training and the test sets to create one data set
1.  Loads plyr and dplyr packages(it's supposed that they are installed)
2.  Loads train and test data sets from *X_train.txt* and *X_test.txt* files respectively
3.  Merges these two sets into one set
4.  Loads feature names from *features.txt* - these are column names for our merged set
5.  Assigns feature names as columns of merged set
6.  Removes duplicated columns from merged set
7.  Converts merged set data.frame to tbl_df format for using verbs of dplyr packages in following steps

####Step 2: Extracts only the measurements on the mean and standard deviation for each measurement
8.  Selects columns which names contain *"mean()"* and *"std()"* substrings from merged set 

####Step 4: Appropriately labels the data set with descriptive variable names
9.  Changes the column names replacing short terms with complete ones(t -> Time, Gyro -> Gyroscope, etc.)
10.  Replaces *"mean()"* and *"std()"* by *"Average"* and *"Deviation"* respectively
11.  Removes dashes from column names and add "_" before axis name(X -> _X)

####Step 3: Uses descriptive activity names to name the activities in the data set
12. Loads subjects and activities sets of according to former train set: files *subject_train.txt* and *y_train.txt* respectively
13. Loads subjects and activities sets of according to former test set: files *subject_test.txt* and *y_test.txt* respectively
14. Merges subjects from train and test sets into one allSubjects set
15. Merges activities from train and test sets into one allActivities set
16. Loads lookup table for activity labels and descriptive names: file *activity_labels.txt*
17. Replace activity labels by descriptive names in allActivities set using `join` function from plyr package
18. Assign names "Subject" and "Activity" as  allSubjects and allActivies column names respectively
19. Binds allSubjects and allActivities to merged set and saves the result in mergedSet

####Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
20. Group resulting mergedSet by subject and activity using `group_by` function of dplyr package
21. Calculate means of all variables in resulting dataset using `summarise_each` function of dplyr package 
22. Assigns obtained dataset to tidyset

###Notes on tidyset
In order to write tidyset to txt file use command: 
`write.table(tidyset, "filepath", row.names = FALSE)`

In order to read tidyset from txt file use command: 
`read.table("filepath", header = TRUE)`
