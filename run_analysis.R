## You should create one R script called run_analysis.R that does the following.

# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set 
#     with the average of each variable for each activity and each subject.

#read features file
setwd("/Users/haewonyum/Documents/Coursera_Data Science Specialist/Course#3_Getting and Cleaning Data/Week4_Course Project/Dataset")
library(dplyr)
library(data.table)

#reading the files in the root folder
features<-read.table("./features.txt",header = FALSE)
activityNames <- read.table("./activity_labels.txt", header = F)

#reading the files in the training folder     
features_train <- read.table("./train/X_train.txt", header = F)
activities_train<-read.table("./train/y_train.txt",header=FALSE)
subjects_train<-read.table("./train/subject_train.txt",header=FALSE)
totalAccX_train<-read.table("./train/Inertial Signals/total_acc_x_train.txt",header=FALSE)
totalAccY_train<-read.table("./train/Inertial Signals/total_acc_y_train.txt",header=FALSE)
totalAccZ_train<-read.table("./train/Inertial Signals/total_acc_z_train.txt",header=FALSE)
bodyAccXTrain<-read.table("./train/Inertial Signals/body_acc_x_train.txt",header=FALSE)
bodyAccY_train<-read.table("./train/Inertial Signals/body_acc_y_train.txt",header=FALSE)
bodyAccZ_train<-read.table("./train/Inertial Signals/body_acc_z_train.txt",header=FALSE)
bodyGyroX_train<-read.table("./train/Inertial Signals/body_gyro_x_train.txt",header=FALSE)
bodyGyroY_train<-read.table("./train/Inertial Signals/body_gyro_y_train.txt",header=FALSE)
bodyGyroZ_train<-read.table("./train/Inertial Signals/body_gyro_z_train.txt",header=FALSE)

#reading the files in the test folder     
features_test<-read.table("./test/X_test.txt",header = FALSE)
activities_test<-read.table("./test/y_test.txt",header=FALSE)
subjects_test<-read.table("./test/subject_test.txt",header=FALSE)
totalAccX_test<-read.table("./test/Inertial Signals/total_acc_x_test.txt",header=FALSE)
totalAccY_test<-read.table("./test/Inertial Signals/total_acc_y_test.txt",header=FALSE)
totalAccZ_test<-read.table("./test/Inertial Signals/total_acc_z_test.txt",header=FALSE)
bodyAccX_test<-read.table("./test/Inertial Signals/body_acc_x_test.txt",header=FALSE)
bodyAccY_test<-read.table("./test/Inertial Signals/body_acc_y_test.txt",header=FALSE)
bodyAccZ_test<-read.table("./test/Inertial Signals/body_acc_z_test.txt",header=FALSE)
bodyGyroX_test<-read.table("./test/Inertial Signals/body_gyro_x_test.txt",header=FALSE)
bodyGyroY_test<-read.table("./test/Inertial Signals/body_gyro_y_test.txt",header=FALSE)
bodyGyroZ_test<-read.table("./test/Inertial Signals/body_gyro_z_test.txt",header=FALSE)

#rename datasets
names(subjects_train) <- "subject"
names(subjects_test) <- "subject"

names(activities_train) <- "activities"
names(activities_test) <- "activities"

names(features_train) <- features$V2
names(features_test) <- features$V2


## 1. Merges the training and the test sets to create one data set.
total_train <- cbind(subjects_train, activities_train, features_train)
total_test <- cbind(subjects_test, activities_test, features_test)

# Create merged data including the training and the test data sets. 
mergedData <- rbind(total_train, total_test) 

## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# Extracts column names including mean or std
features_meanStd <- features$V2[grep("mean|std",features$V2)]
features_meanStd <- as.character(features_meanStd)

# Extracts only measurements on the mean and std
mergedData_meanStd <- mergedData[,c("subject", "activities", features_meanStd)]

## 3. Uses descriptive activity names to name the activities in the data set
f_activity <- function(x){activityNames$V2[x]}
mergedData_meanStd$activities <- sapply(mergedData_meanStd$activities, f_activity)

## 4. Appropriately labels the data set with descriptive variable names.
## 5. From the data set in step 4, creates a second, independent tidy data set 
##    with the average of each variable for each activity and each subject.

# create new factor variable with subject and activities variables
factor(mergedData_meanStd$subject)
factor(mergedData_meanStd$activities)
mergedData_meanStd$factor <- with(mergedData_meanStd, interaction(subject,activities))

# calculate mean by new factor variable & arrange / sorting
new_mergedData_meanStd  <- aggregate(mergedData_meanStd[, c(1,3:81)], list(mergedData_meanStd$factor), mean)
new_mergedData_meanStd  <- arrange(new_mergedData_meanStd,subject)
new_mergedData_meanStd <- new_mergedData_meanStd[,c(2,1,3:81)]

# Rename/reshaping data for end user
new_var <- as.character(new_mergedData_meanStd$Group.1)
new_var2 <- strsplit(new_var,"\\.")
f_split <- function(x) {x[2]}
new_mergedData_meanStd$activities <- unlist(lapply(new_var2, f_split))
new_mergedData_meanStd <- new_mergedData_meanStd[,c(1,82,3:81)]

