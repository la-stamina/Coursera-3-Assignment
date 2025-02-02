CODE BOOK 
for run_analysis.R script

The raw data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 
A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
 
Detailed information on source raw variables is below:

The body linear acceleration and angular velocity were derived in time to obtain Jerk signals 
(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals 
were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, 
fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 
(Note the 'f' to indicate frequency domain signals). 
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.





STEPS OF CREATING FINAL DATASETS:
1. Merges the training and the test sets to create one data set.
download.file()  - used for download raw data
unzip() - used for unpacking zip
read.table() - used for loading separate data frames 
cbind() - used for binding data frames (columns) from train/test datasets
rbind() - used for merging test and training data frames (rows) 


2. Extracts only the measurements on the mean and standard deviation for each measurement. 
select() - used for selecting only columns presenting mean and SD values

3. Uses descriptive activity names to name the activities in the data set
merge() - used for adding column deciphering descriptive names of activities
select() - used for removing column with code of activity and reorganizing column order

4. Appropriately labels the data set with descriptive variable names. 
Reduce(function(x, pattern) 
  gsub(pattern, replacements[pattern], x, ignore.case = TRUE), names(replacements), init = names(Tidy))

used for fast and efficient renaming of variables for descriptive names.

5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
group_by()
summarize_if()
used for creating dataset presenting mean values for each subject and activity.





Both datasets that are a final products of script (Tidy and Tidy_mean) are dataframes that covers 88 variables. 
Dataset Tidy has 10299 observations from measurements for all participants and activities. 
Dataset Tidy_mean has 180 variables showing mean for each variables grouped by variables subjectId and activity name.

DESCRIPTION OF VARIABLES:

Variables are combination of accelerometr measures in three dimensions (XYZ) expressed as mean and SD:
TimeBodyAccelerometer-XYZ
TimeGravityAccelerometer-XYZ
TimeBodyAccelerometerJerk-XYZ
TimeBodyGyroscope-XYZ
TimeBodyGyroscopeJerk-XYZ
TimeBodyAccelerometerMagnitude
TimeGravityAccelerometerMagnitude
TimeBodyAccelerometerJerkMagnitude
TimeBodyGyroscopeMagnitude
TimeBodyGyroscopeJerkMagnitude
FrequencyBodyAccelerometer-XYZ
FrequencyBodyAccelerometerJerk-XYZ
FrequencyBodyGyroscope-XYZ
FrequencyBodyAccelerometerMagnitude
FrequencyBodyAccelerometerJerkMagnitude
FrequencyBodyGyroscope
FrequencyBodyAccelerometerJerkMagnitude
gravityMean
TimeBodyAccelerometerMean
TimeBodyAccelerometerJerkMean
TimeBodyGyroscopeMean
TimeBodyGyroscopeJerkMean

The set of variables that were estimated from these signals are: 
mean(): Mean value
std(): Standard deviation




VARIABLES LIST: 

 $ subjectId                                         : int  
 $ activityName                                      : chr  
		code of activity
		1 WALKING
		2 WALKING_UPSTAIRS
		3 WALKING_DOWNSTAIRS
		4 SITTING
		5 STANDING
		6 LAYING

 $ TimeBodyAccelerometer.mean...X                    : num   
 $ TimeBodyAccelerometer.mean...Y                    : num   
 $ TimeBodyAccelerometer.mean...Z                    : num   
 $ TimeGravityAccelerometer.mean...X                 : num    
 $ TimeGravityAccelerometer.mean...Y                 : num   
 $ TimeGravityAccelerometer.mean...Z                 : num   
 $ TimeBodyAccelerometerJerk.mean...X                : num   
 $ TimeBodyAccelerometerJerk.mean...Y                : num   
 $ TimeBodyAccelerometerJerk.mean...Z                : num   
 $ TimeBodyGyroscope.mean...X                        : num   
 $ TimeBodyGyroscope.mean...Y                        : num    
 $ TimeBodyGyroscope.mean...Z                        : num   
 $ TimeBodyGyroscopeJerk.mean...X                    : num   
 $ TimeBodyGyroscopeJerk.mean...Y                    : num   
 $ TimeBodyGyroscopeJerk.mean...Z                    : num   
 $ TimeBodyAccelerometerMagnitude.mean..             : num   
 $ TimeGravityAccelerometerMagnitude.mean..          : num   
 $ TimeBodyAccelerometerJerkMagnitude.mean..         : num   
 $ TimeBodyGyroscopeMagnitude.mean..                 : num   
 $ TimeBodyGyroscopeJerkMagnitude.mean..             : num   
 $ FrequencyBodyAccelerometer.mean...X               : num  
 $ FrequencyBodyAccelerometer.mean...Y               : num   
 $ FrequencyBodyAccelerometer.mean...Z               : num   
 $ FrequencyBodyAccelerometer.meanFreq...X           : num   
 $ FrequencyBodyAccelerometer.meanFreq...Y           : num   
 $ FrequencyBodyAccelerometer.meanFreq...Z           : num   
 $ FrequencyBodyAccelerometerJerk.mean...X           : num   
 $ FrequencyBodyAccelerometerJerk.mean...Y           : num   
 $ FrequencyBodyAccelerometerJerk.mean...Z           : num   
 $ FrequencyBodyAccelerometerJerk.meanFreq...X       : num   
 $ FrequencyBodyAccelerometerJerk.meanFreq...Y       : num   
 $ FrequencyBodyAccelerometerJerk.meanFreq...Z       : num   
 $ FrequencyBodyGyroscope.mean...X                   : num   
 $ FrequencyBodyGyroscope.mean...Y                   : num   
 $ FrequencyBodyGyroscope.mean...Z                   : num   
 $ FrequencyBodyGyroscope.meanFreq...X               : num   
 $ FrequencyBodyGyroscope.meanFreq...Y               : num   
 $ FrequencyBodyGyroscope.meanFreq...Z               : num   
 $ FrequencyBodyAccelerometerMagnitude.mean..        : num   
 $ FrequencyBodyAccelerometerMagnitude.meanFreq..    : num   
 $ FrequencyBodyAccelerometerJerkMagnitude.mean..    : num   
 $ FrequencyBodyAccelerometerJerkMagnitude.meanFreq..: num   
 $ FrequencyBodyGyroscopeMagnitude.mean..            : num   
 $ FrequencyBodyGyroscopeMagnitude.meanFreq..        : num   
 $ FrequencyBodyGyroscopeJerkMagnitude.mean..        : num   
 $ FrequencyBodyGyroscopeJerkMagnitude.meanFreq..    : num   
 $ Angle.TimeBodyAccelerometerMean.Gravity.          : num   
 $ Angle.TimeBodyAccelerometerJerkMean..GravityMean. : num   
 $ Angle.TimeBodyGyroscopeMean.GravityMean.          : num   
 $ Angle.TimeBodyGyroscopeJerkMean.GravityMean.      : num   
 $ Angle.X.GravityMean.                              : num   
 $ Angle.Y.GravityMean.                              : num   
 $ Angle.Z.GravityMean.                              : num   
 $ TimeBodyAccelerometer.std...X                     : num   
 $ TimeBodyAccelerometer.std...Y                     : num   
 $ TimeBodyAccelerometer.std...Z                     : num   
 $ TimeGravityAccelerometer.std...X                  : num   
 $ TimeGravityAccelerometer.std...Y                  : num   
 $ TimeGravityAccelerometer.std...Z                  : num   
 $ TimeBodyAccelerometerJerk.std...X                 : num   
 $ TimeBodyAccelerometerJerk.std...Y                 : num   
 $ TimeBodyAccelerometerJerk.std...Z                 : num  
 $ TimeBodyGyroscope.std...X                         : num   
 $ TimeBodyGyroscope.std...Y                         : num   
 $ TimeBodyGyroscope.std...Z                         : num   
 $ TimeBodyGyroscopeJerk.std...X                     : num  
 $ TimeBodyGyroscopeJerk.std...Y                     : num  
 $ TimeBodyGyroscopeJerk.std...Z                     : num   
 $ TimeBodyAccelerometerMagnitude.std..              : num   
 $ TimeGravityAccelerometerMagnitude.std..           : num   
 $ TimeBodyAccelerometerJerkMagnitude.std..          : num  
 $ TimeBodyGyroscopeMagnitude.std..                  : num   
 $ TimeBodyGyroscopeJerkMagnitude.std..              : num   
 $ FrequencyBodyAccelerometer.std...X                : num   
 $ FrequencyBodyAccelerometer.std...Y                : num   
 $ FrequencyBodyAccelerometer.std...Z                : num   
 $ FrequencyBodyAccelerometerJerk.std...X            : num   
 $ FrequencyBodyAccelerometerJerk.std...Y            : num   
 $ FrequencyBodyAccelerometerJerk.std...Z            : num   
 $ FrequencyBodyGyroscope.std...X                    : num   
 $ FrequencyBodyGyroscope.std...Y                    : num   
 $ FrequencyBodyGyroscope.std...Z                    : num   
 $ FrequencyBodyAccelerometerMagnitude.std..         : num   
 $ FrequencyBodyAccelerometerJerkMagnitude.std..     : num   
 $ FrequencyBodyGyroscopeMagnitude.std..             : num   
 $ FrequencyBodyGyroscopeJerkMagnitude.std..         : num   
