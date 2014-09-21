One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

This script produces following variables the final output file.
Classes ‘data.table’ and 'data.frame':  180 obs. of  82 variables:

 $ Activity_ID                    : int  5 4 6 1 3 2 5 4 6 1
 $ subject                        : int  2 2 2 2 2 2 4 4 4 4
 $ Activity_Label                 : num  3 2 1 4 5 6 3 2 1 4
 $ tBodyAcc-mean()-X              : num  0.278 0.277 0.281 0
 $ tBodyAcc-mean()-Y              : num  -0.0184 -0.0157 -0.
 $ tBodyAcc-mean()-Z              : num  -0.106 -0.109 -0.10
 $ tBodyAcc-std()-X               : num  -0.9873 -0.9868 -0.
 $ tBodyAcc-std()-Y               : num  -0.9573 -0.9507 -0.
 $ tBodyAcc-std()-Z               : num  -0.95 -0.96 -0.984 
 $ tGravityAcc-mean()-X           : num  0.897 0.94 -0.51 0.
 $ tGravityAcc-mean()-Y           : num  -0.37 -0.106 0.753 
 $ tGravityAcc-mean()-Z           : num  0.1297 0.1987 0.646
 $ tGravityAcc-std()-X            : num  -0.987 -0.98 -0.959
 $ tGravityAcc-std()-Y            : num  -0.974 -0.957 -0.98
 $ tGravityAcc-std()-Z            : num  -0.946 -0.954 -0.98
 $ tBodyAccJerk-mean()-X          : num  0.0748 0.0723 0.082
 $ tBodyAccJerk-mean()-Y          : num  0.01033 0.0117 0.01
 $ tBodyAccJerk-mean()-Z          : num  -0.00837 0.00761 -0
 $ tBodyAccJerk-std()-X           : num  -0.981 -0.988 -0.98
 $ tBodyAccJerk-std()-Y           : num  -0.9711 -0.978 -0.9
 $ tBodyAccJerk-std()-Z           : num  -0.983 -0.988 -0.98
 $ tBodyGyro-mean()-X             : num  -0.0239 -0.0455 -0.
 $ tBodyGyro-mean()-Y             : num  -0.08204 -0.05993 -
 $ tBodyGyro-mean()-Z             : num  0.0878 0.0412 0.144
 $ tBodyGyro-std()-X              : num  -0.973 -0.986 -0.98
 $ tBodyGyro-std()-Y              : num  -0.971 -0.979 -0.98
 $ tBodyGyro-std()-Z              : num  -0.965 -0.96 -0.96 
 $ tBodyGyroJerk-mean()-X         : num  -0.1056 -0.0936 -0.
 $ tBodyGyroJerk-mean()-Y         : num  -0.0422 -0.0416 -0.
 $ tBodyGyroJerk-mean()-Z         : num  -0.0547 -0.0436 -0.
 $ tBodyGyroJerk-std()-X          : num  -0.979 -0.99 -0.993
 $ tBodyGyroJerk-std()-Y          : num  -0.983 -0.991 -0.99
 $ tBodyGyroJerk-std()-Z          : num  -0.974 -0.986 -0.98
 $ tBodyAccMag-mean()             : num  -0.966 -0.968 -0.97
 $ tBodyAccMag-std()              : num  -0.958 -0.953 -0.97
 $ tGravityAccMag-mean()          : num  -0.966 -0.968 -0.97
 $ tGravityAccMag-std()           : num  -0.958 -0.953 -0.97
 $ tBodyAccJerkMag-mean()         : num  -0.98049 -0.98677 -
 $ tBodyAccJerkMag-std()          : num  -0.977 -0.984 -0.98
 $ tBodyGyroMag-mean()            : num  -0.963 -0.946 -0.95
 $ tBodyGyroMag-std()             : num  -0.954 -0.961 -0.96
 $ tBodyGyroJerkMag-mean()        : num  -0.984 -0.991 -0.99
 $ tBodyGyroJerkMag-std()         : num  -0.977 -0.99 -0.99 
 $ fBodyAcc-mean()-X              : num  -0.984 -0.986 -0.97
 $ fBodyAcc-mean()-Y              : num  -0.9599 -0.9573 -0.
 $ fBodyAcc-mean()-Z              : num  -0.962 -0.97 -0.984
 $ fBodyAcc-std()-X               : num  -0.9891 -0.9874 -0.
 $ fBodyAcc-std()-Y               : num  -0.958 -0.95 -0.981
 $ fBodyAcc-std()-Z               : num  -0.946 -0.957 -0.98
 $ fBodyAcc-meanFreq()-X          : num  0.1085 0.0852 -0.14
 $ fBodyAcc-meanFreq()-Y          : num  0.0623 0.1502 0.257
 $ fBodyAcc-meanFreq()-Z          : num  0.1045 0.0961 0.402
 $ fBodyAccJerk-mean()-X          : num  -0.981 -0.988 -0.98
 $ fBodyAccJerk-mean()-Y          : num  -0.9709 -0.9771 -0.
 $ fBodyAccJerk-mean()-Z          : num  -0.98 -0.985 -0.986
 $ fBodyAccJerk-std()-X           : num  -0.983 -0.989 -0.98
 $ fBodyAccJerk-std()-Y           : num  -0.9735 -0.9808 -0.
 $ fBodyAccJerk-std()-Z           : num  -0.985 -0.989 -0.98
 $ fBodyAccJerk-meanFreq()-X      : num  0.3314 0.3055 0.159
 $ fBodyAccJerk-meanFreq()-Y      : num  -0.0569 0.0262 0.12
 $ fBodyAccJerk-meanFreq()-Z      : num  0.0396 0.0929 0.190
 $ fBodyGyro-mean()-X             : num  -0.967 -0.983 -0.98
 $ fBodyGyro-mean()-Y             : num  -0.973 -0.982 -0.98
 $ fBodyGyro-mean()-Z             : num  -0.9606 -0.9598 -0.
 $ fBodyGyro-std()-X              : num  -0.975 -0.987 -0.98
 $ fBodyGyro-std()-Y              : num  -0.971 -0.977 -0.98
 $ fBodyGyro-std()-Z              : num  -0.97 -0.964 -0.963
 $ fBodyGyro-meanFreq()-X         : num  -0.10742 0.13052 0.
 $ fBodyGyro-meanFreq()-Y         : num  -0.1712 -0.1921 0.0
 $ fBodyGyro-meanFreq()-Z         : num  0.000227 0.040947 0
 $ fBodyAccMag-mean()             : num  -0.964 -0.961 -0.97
 $ fBodyAccMag-std()              : num  -0.9605 -0.9556 -0.
 $ fBodyAccMag-meanFreq()         : num  0.1196 0.1309 0.266
 $ fBodyBodyAccJerkMag-mean()     : num  -0.977 -0.984 -0.98
 $ fBodyBodyAccJerkMag-std()      : num  -0.975 -0.984 -0.98
 $ fBodyBodyAccJerkMag-meanFreq() : num  0.3049 0.2801 0.341
 $ fBodyBodyGyroMag-mean()        : num  -0.962 -0.972 -0.97
 $ fBodyBodyGyroMag-std()         : num  -0.957 -0.961 -0.96
 $ fBodyBodyGyroMag-meanFreq()    : num  -0.0661 -0.1064 0.0
 $ fBodyBodyGyroJerkMag-mean()    : num  -0.978 -0.99 -0.99 
 $ fBodyBodyGyroJerkMag-std()     : num  -0.978 -0.99 -0.989
 $ fBodyBodyGyroJerkMag-meanFreq(): num  0.1607 0.1947 0.264
