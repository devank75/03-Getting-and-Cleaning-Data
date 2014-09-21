###### Coursera - 03 Getting and Cleaning Data - Project ######
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Set up working dir.
setwd("E:/R/coursera/03 Getting and Cleaning Data/UCI HAR Dataset")
getwd()
dir()

## Install required packages.
library(data.table)
#install.packages("data.table")

library(reshape2)
#install.packages("reshape2")


## Read all files.
activityLabels <- read.table("activity_labels.txt")[,2]
allFeatures <- read.table("features.txt")[,2]
XTrain <- read.table("./train/X_train.txt")
yTrain <- read.table("./train/y_train.txt")
subjTrain <- read.table("./train/subject_train.txt")
XTest <- read.table("./test/X_test.txt")
yTest <- read.table("./test/y_test.txt")
subjTest <- read.table("./test/subject_test.txt")

## Adjust read files
yTrain[,2] = activityLabels[yTrain[,1]]
yTest[,2] <- activityLabels[yTest[,1]]

## Assign sensible names.
names(XTrain)<- allFeatures
names(subjTrain) = "subject"
names(XTest) = allFeatures
names(subjTest)= "subject"
names(yTrain) = c("Activity_ID", "Activity_Label")
names(yTest) = c("Activity_ID", "Activity_Label")


## Subset read files
mean_std_Features <- grepl("mean|std", allFeatures) # TRUE if finds mean or std
XTrain = XTrain[,mean_std_Features] # We need just mean & std.
XTest = XTest[,mean_std_Features]

## Combine data sets
trainData <- cbind(as.data.table(subjTrain), yTrain, XTrain)
testData <- cbind(as.data.table(subjTest), yTest, XTest)

## 1. Merges the training and the test sets to create one data set.
TestTrainData <-rbind(testData, trainData)

## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# It is not really needed as only mean & std are extracted.
TestTrainDataMean<-sapply(TestTrainData,mean,na.rm=TRUE)
TestTrainDataSD<-sapply(TestTrainData,sd,na.rm=TRUE)

## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
TestTrainDataTable <- data.table(TestTrainData)
names(TestTrainDataTable) # All variables have names
TestTrainTidy<-TestTrainDataTable[,lapply(.SD,mean),by="Activity_ID,subject"]
write.table(TestTrainTidy, file = "./TestTrainTidy.txt",sep=",",row.names = FALSE)
