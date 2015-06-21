## Need to set working directory to 
## directory where folders train and test 
## and other files are located on your computer

## Loading needed packages
library(plyr)
library(dplyr)

## Loading and merging sets
trainSet <- read.table("./train/X_train.txt")
testSet <- read.table("./test/X_test.txt")
mergedSet <- rbind(trainSet, testSet)

rm(trainSet)
rm(testSet)

## Loading column names 
features <- read.table("./features.txt", stringsAsFactors = FALSE)$V2

## Assigning column names to the set and removing duplicated columns
colnames(mergedSet) <- features
mergedSet <- mergedSet[ , !duplicated(colnames(mergedSet))]

## Extracting only mean and standard deviation measurements
mergedSet <- tbl_df(mergedSet)
mergedSet <- select(mergedSet, contains("mean()"), contains("std()"))

## Create more descriptive names for columns
features <- colnames(mergedSet)
features <- sub("t", "Time", features)
features <- sub("f", "Frequency", features)
features <- sub("Gyro", "Gyroscope", features)
features <- sub("Acc", "Accelerometer", features)
features <- sub("mean()", "Average", features)
features <- sub("std()", "Deviation", features)
features <- sub("()", "", features)
features <- sub("Timed", "td", features)
features <- sub("Mag", "Magnitude", features)
features <- sub("std()", "Deviation", features)
features <- sub("\\(\\)", "", features)
features <- sub("-", "", features)
features <- sub("\\-", "", features)
features <- sub("X", "_X", features)
features <- sub("Y", "_Y", features)
features <- sub("Z", "_Z", features)
colnames(mergedSet) <- features

rm(features)

## Loading subjects and activities for train and test sets and merging them
trainActivities <- read.table("./train/y_train.txt")
trainSubjects <- read.table("./train/subject_train.txt")
testActivities <- read.table("./test/y_test.txt")
testSubjects <- read.table("./test/subject_test.txt")
allActivities <- rbind(trainActivities, testActivities)
allSubjects <- rbind(trainSubjects, testSubjects)
 
rm(trainActivities)
rm(testActivities)
rm(trainSubjects)
rm(testSubjects)

## Replacing activity labels with their descriptive names
activityLabels <- read.table("./activity_labels.txt")
allActivities <- join(allActivities, activityLabels, by = "V1")
allActivities <- select(allActivities, -V1)

rm(activityLabels)

## Assigning names to subject and activity columns
colnames(allSubjects) <- c("Subject")
colnames(allActivities) <- c("Activity")
 
## Binding subject and activity columns to the set
mergedSet <- cbind(allSubjects, allActivities, mergedSet)

rm(allActivities)
rm(allSubjects)

## Create an independent tidy set containing average of all variables, 
## grouped by subject and activity

tidyset <- mergedSet %>% group_by(Subject, Activity) %>% summarise_each(funs(mean))
