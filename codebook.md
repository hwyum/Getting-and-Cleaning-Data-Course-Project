# DATA DICTIONARY - Human Activity Recognition Data Set

Description regarding new data frame called "new_mergedData_meanStd"
* New dataset created by the source file "run_analysis.R" include both train and test data and there's no mark telling that this is train or test data.
* New dataset extracts only the measurements on the mean and standard deviation for each measurement from the original feature dataset.
* The value of variable 'activities' is transformed into descriptive character from the activity code(1~6) in the original dataset.
* New dataset is ordered by number of subject and the subject's each activity

<pre>subject
	Subject of the experiment
		1	Subject #1
		2	Subject #2
		3	Subject #3
		4	Subject #4	
		5	Subject #5
		6	Subject #6
		7	Subject #7	
		8	Subject #8
		9	Subject #9
		10	Subject #10
		11	Subject #11
		12	Subject #12
		13	Subject #13
		14	Subject #14
		15	Subject #15	
		16	Subject #16
		17	Subject #17
		18	Subject #18
		19	Subject #19
		20	Subject #20
		21	Subject #21
		22	Subject #22	
		23	Subject #23
		24	Subject #24
		25	Subject #25
		26	Subject #26
		27	Subject #27
		28	Subject #28
		29	Subject #29
		30	Subject #30	
	
activitie
	Activities the subject performed during the measurement
		LAYING
		SITTING
		STANDING
		WALKING
		WALKING_DOWNSTAIRS 
		WALKING_UPSTAIRS
	
tBodyAcc-mean()-X
	Mean value of time domain body acceleration signals (which were captured at a constant rate of 50 Hz) in X-axis
tBodyAcc-mean()-Y
	Mean value of time domain body acceleration signals (which were captured at a constant rate of 50 Hz) in Y-axis
tBodyAcc-mean()-Z               
	Mean value of time domain body acceleration signals (which were captured at a constant rate of 50 Hz) in Z-axis
tBodyAcc-std()-X             
	Standard deviation of time domain body acceleration signals (which were captured at a constant rate of 50 Hz) in X-axis
tBodyAcc-std()-Y                
	Standard deviation of time domain body acceleration signals (which were captured at a constant rate of 50 Hz) in Y-axis
tBodyAcc-std()-Z
	Standard deviation of time domain body acceleration signals (which were captured at a constant rate of 50 Hz) in Z-axis
tGravityAcc-mean()-X
	Mean value of time domain gravity acceleration signals (which were captured at a constant rate of 50 Hz) in X-axis
tGravityAcc-mean()-Y
	Mean value of time domain gravity acceleration signals (which were captured at a constant rate of 50 Hz) in Y-axis
tGravityAcc-mean()-Z
	Mean value of time domain gravity acceleration signals (which were captured at a constant rate of 50 Hz) in Z-axis
tGravityAcc-std()-X
	Standard deviation of time domain gravity acceleration signals (which were captured at a constant rate of 50 Hz) in X-axis
tGravityAcc-std()-Y
	Standard deviation of time domain gravity acceleration signals (which were captured at a constant rate of 50 Hz) in Y-axis
tGravityAcc-std()-Z
	Standard deviation of time domain gravity acceleration signals (which were captured at a constant rate of 50 Hz) in Z-axis
tBodyAccJerk-mean()-X
	Mean value of time domain gravity acceleration jerk signals in X-axis
tBodyAccJerk-mean()-Y
	Mean value of time domain gravity acceleration jerk signals in Y-axis
tBodyAccJerk-mean()-Z
	Mean value of time domain gravity acceleration jerk signals in Z-axis
tBodyAccJerk-std()-X
	Standard deviation of time domain gravity acceleration jerk signals in X-axis
tBodyAccJerk-std()-Y
	Standard deviation of time domain gravity acceleration jerk signals in Y-axis
tBodyAccJerk-std()-Z
	Standard deviation of time domain gravity acceleration jerk signals in Z-axis
tBodyGyro-mean()-X
	Mean value of time domain gyroscope signals (which were captured at a constant rate of 50 Hz) in X-axis
tBodyGyro-mean()-Y
	Mean value of time domain gyroscope signals (which were captured at a constant rate of 50 Hz) in Y-axis
tBodyGyro-mean()-Z
	Mean value of time domain gyroscope signals (which were captured at a constant rate of 50 Hz) in Z-axis
tBodyGyro-std()-X
	Standard deviation of time domain gyroscope signals (which were captured at a constant rate of 50 Hz) in X-axis
tBodyGyro-std()-Y
	Standard deviation of time domain gyroscope signals (which were captured at a constant rate of 50 Hz) in Y-axis
tBodyGyro-std()-Z
	Standard deviation of time domain gyroscope signals (which were captured at a constant rate of 50 Hz) in Z-axis
tBodyGyroJerk-mean()-X
	Mean value of time domain gyroscope jerk signals in X-axis
tBodyGyroJerk-mean()-Y
	Mean value of time domain gyroscope jerk signals in Y-axis
tBodyGyroJerk-mean()-Z
	Mean value of time domain gyroscope jerk signals in Z-axis
tBodyGyroJerk-std()-X
	Standard deviation of time domain gyroscope jerk signals in X-axis
tBodyGyroJerk-std()-Y
	Standard deviation of time domain gyroscope jerk signals in Y-axis
tBodyGyroJerk-std()-Z
	Standard deviation of time domain gyroscope jerk signals in Z-axis
tBodyAccMag-mean()
	Mean value of the magnitude of body acceleration signals (calculated using the Euclidean norm)
tBodyAccMag-std()
	Standard deviation of the magnitude of body acceleration signals (calculated using the Euclidean norm)
tGravityAccMag-mean()
	Mean value of the magnitude of gravity acceleration signals (calculated using the Euclidean norm)
tGravityAccMag-std()
	Standard deviation of the magnitude of gravity acceleration signals (calculated using the Euclidean norm)
tBodyAccJerkMag-mean()
	Mean value of the magnitude of body acceleration jerk signals
tBodyAccJerkMag-std()
	Standard deviation of the magnitude of body acceleration jerk signals
tBodyGyroMag-mean()
	Mean value of the magnitude of body gyroscope signals (calculated using the Euclidean norm)
tBodyGyroMag-std()
	Standard deviation of the magnitude of body gyroscope signals (calculated using the Euclidean norm)
tBodyGyroJerkMag-mean()
	Mean value of the magnitude of body gyroscope jerk signals
tBodyGyroJerkMag-std()
	Standard deviation of the magnitude of body gyroscope jerk signals
fBodyAcc-mean()-X
	Mean value of FFT(Fast Fourier Transform) applied body acceleration signal in X-axis
fBodyAcc-mean()-Y
	Mean value of FFT(Fast Fourier Transform) applied body acceleration signal in Y-axis
fBodyAcc-mean()-Z
	Mean value of FFT(Fast Fourier Transform) applied body acceleration signal in Z-axis
fBodyAcc-std()-X
	Standard deviation of FFT(Fast Fourier Transform) applied body acceleration signal in X-axis
fBodyAcc-std()-Y
	Standard deviation of FFT(Fast Fourier Transform) applied body acceleration signal in Y-axis
fBodyAcc-std()-Z
	Standard deviation of FFT(Fast Fourier Transform) applied body acceleration signal in Z-axis
fBodyAcc-meanFreq()-X
	Weighted average of the frequency components of FFT body acceleration signal in X-axis
fBodyAcc-meanFreq()-Y
	Weighted average of the frequency components of FFT body acceleration signal in Y-axis
fBodyAcc-meanFreq()-Z
	Weighted average of the frequency components of FFT body acceleration signal in Z-axis
fBodyAccJerk-mean()-X
	Mean value of FFT(Fast Fourier Transform) applied body acceleration jerk signal in X-axis
fBodyAccJerk-mean()-Y
	Mean value of FFT(Fast Fourier Transform) applied body acceleration jerk signal in Y-axis
fBodyAccJerk-mean()-Z
	Mean value of FFT(Fast Fourier Transform) applied body acceleration jerk signal in Z-axis
fBodyAccJerk-std()-X
	Standard deviation of FFT(Fast Fourier Transform) applied body acceleration jerk signal in X-axis
fBodyAccJerk-std()-Y
	Standard deviation of FFT(Fast Fourier Transform) applied body acceleration jerk signal in Y-axis
fBodyAccJerk-std()-Z
	Standard deviation of FFT(Fast Fourier Transform) applied body acceleration jerk signal in Z-axis
fBodyAccJerk-meanFreq()-X
	Weighted average of the frequency components of FFT body acceleration jerk signal in X-axis
fBodyAccJerk-meanFreq()-Y
	Weighted average of the frequency components of FFT body acceleration jerk signal in Y-axis
fBodyAccJerk-meanFreq()-Z
	Weighted average of the frequency components of FFT body acceleration jerk signal in Z-axis
fBodyGyro-mean()-X
	Mean value of FFT(Fast Fourier Transform) applied body gyroscope signal in X-axis
fBodyGyro-mean()-Y
	Mean value of FFT(Fast Fourier Transform) applied body gyroscope signal in Y-axis
fBodyGyro-mean()-Z
	Mean value of FFT(Fast Fourier Transform) applied body gyroscope signal in Z-axis
fBodyGyro-std()-X
	Standard deviation of FFT(Fast Fourier Transform) applied body gyroscope signal in X-axis
fBodyGyro-std()-Y
	Standard deviation of FFT(Fast Fourier Transform) applied body gyroscope signal in Y-axis
fBodyGyro-std()-Z
	Standard deviation of FFT(Fast Fourier Transform) applied body gyroscope signal in Z-axis
fBodyGyro-meanFreq()-X
	Weighted average of the frequency components of FFT body gyroscope signal in X-axis
fBodyGyro-meanFreq()-Y
	Weighted average of the frequency components of FFT body gyroscope signal in Y-axis
fBodyGyro-meanFreq()-Z
	Weighted average of the frequency components of FFT body gyroscope signal in Z-axis
fBodyAccMag-mean()
	Mean value of the magnitude of FFT body acceleration signals
fBodyAccMag-std()
	Standard deviation of the magnitude of FFT body acceleration signals
fBodyAccMag-meanFreq()
	Weighted average of the magnitude of frequency components of FFT body acceleration signals
fBodyBodyAccJerkMag-mean()
	Mean value of the magnitude of FFT body acceleration jerk signals
fBodyBodyAccJerkMag-std()
	Standard deviation of the magnitude of FFT body acceleration jerk signals
fBodyBodyAccJerkMag-meanFreq()
	Weighted average of the magnitude of frequency components of FFT body acceleration jerk signals
fBodyBodyGyroMag-mean()
	Mean value of the magnitude of FFT body gyroscope jerk signals
fBodyBodyGyroMag-std()
	Standard deviation of the magnitude of FFT body gyroscope jerk signals
fBodyBodyGyroMag-meanFreq()
	Weighted average of the magnitude of frequency components of FFT body gyroscope signals
fBodyBodyGyroJerkMag-mean()
	Mean value of the magnitude of FFT body gyroscope jerk signals
fBodyBodyGyroJerkMag-std()
	Standard deviation of the magnitude of FFT body gyroscope jerk signals
fBodyBodyGyroJerkMag-meanFreq()
	Weighted average of the magnitude of frequency components of FFT body gyroscope jerk signals


</pre>
	
