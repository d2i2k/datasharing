Study Design

Human activity recognition using smartphones experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities: i) WALKING, ii) WALKING_UPSTAIRS, iii) WALKING_DOWNSTAIRS, iv) SITTING, v) STANDING, and vi) LAYING, wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.1
The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers (21/30) were selected for generating the training data and 30% (3/30) the test data. The Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living includes the following files:
- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
Raw Data
The following raw data files are available for train.txt and test files. Their descriptions are equivalent. 
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.
 
Feature Selection (feature_info.txt)

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. The time-domain signals (prefix 't') were captured at a constant rate of 50 Hz. They were filtered using a median filter and a 3rd order low-pass Butterworth filter with a corner frequency of 20 Hz to remove noise.  

Similarly, the acceleration signal was separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low-pass Butterworth filter with corner frequency of 0.3 Hz. Finally a Fast Fourier Transform (FFT) was applied to three of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, and fBodyGyro-XYZ  where the prefix  'f' indicates frequency domain signals, where '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- 1)	tBodyAcc-XYZ,
- 2)	tGravityAcc-XYZ,
- 3)	tBodyAccJerk-XYZ,
- 4)	tBodyGyro-XYZ,
- 5)	tBodyGyroJerk-XYZ,
- 6)	fBodyAcc-XYZ,
- 7)	fBodyAccJerk-XYZ, and
- 8)	fBodyGyro-XYZ.

Two descriptive statistics were estimated for each three-dimensional feature vector : 

- a)	Mean value and
- b)	Standard deviation (SD).

Tidy Data Structure

The final tidy dataset is a 180 by 49 matrix with 180 rows representing signal data on 30 subjects times six activities, and 49 columns corresponding to a unique identifier for Subject/Activity records, e.g., Subject 1_Walking, as well as 48 columns for means and standard deviations on each of the eight feature vectors.

Variable Names

Column	|Heading	|Feature	 	 	|Unit	|Descriptive Statistic
- 2	|tBodyAcc-mean()-X	|Accelerometer, Body	(radians per sec)	|Mean (x)
- 3	|tBodyAcc-mean()-Y	|Accelerometer, Body	(radians per sec)	|Mean (y)
- 4	|tBodyAcc-mean()-Z	|Accelerometer, Body	(radians per sec)	|Mean (z)
- 5	|tBodyAcc-std()-X	|Accelerometer, Body	(radians per sec)	|Standard deviation (x)
- 6	|tBodyAcc-std()-Y	|Accelerometer, Body	(radians per sec)	|Standard deviation (y)
- 7	|tBodyAcc-std()-Z	|Accelerometer, Body	(radians per sec)	|Standard deviation (z)
- 8	|tGravityAcc-mean()-X	|Accelerometer, Gravity	(radians per sec)	|Mean (x)
- 9	|tGravityAcc-mean()-Y	|Accelerometer, Gravity	(radians per sec)	|Mean (y)
- 10	|tGravityAcc-mean()-Z	|Accelerometer, Gravity	(radians per sec)	|Mean (z)
- 11	|tGravityAcc-std()-X	|Accelerometer, Gravity	(radians per sec)	|Standard deviation (x)
- 12	|tGravityAcc-std()-Y	|Accelerometer, Gravity	(radians per sec)	|Standard deviation (y)
- 13	|tGravityAcc-std()-Z	|Accelerometer, Gravity	(radians per sec)	|Standard deviation (z)
- 14	|tBodyAccJerk-mean()-X	|Accelerometer, Body, Jerk (radians per sec)	|Mean (x)
- 15	|tBodyAccJerk-mean()-Y	|Accelerometer, Body, Jerk (radians per sec)	|Mean (y)
- 16	|tBodyAccJerk-mean()-Z	|Accelerometer, Body, Jerk (radians per sec)	|Mean (z)
- 17	|tBodyAccJerk-std()-X	|Accelerometer, Body, Jerk (radians per sec)	|Standard deviation (x)
- 18	|tBodyAccJerk-std()-Y	|Accelerometer, Body, Jerk (radians per sec)	|Standard deviation (y)
- 19	|tBodyAccJerk-std()-Z	|Accelerometer, Body, Jerk (radians per sec)	|Standard deviation (z)
- 20	tBodyGyro-mean()-X	Gyroscope, Body			(radians per sec)	Mean (x)
- 21	tBodyGyro-mean()-Y	Gyroscope, Body			(radians per sec)	Mean (y)
- 22	tBodyGyro-mean()-Z	Gyroscope, Body			(radians per sec)	Mean (z)
- 23	tBodyGyro-std()-X	Gyroscope, Body			(radians per sec)	Standard deviation (x)
- 24	tBodyGyro-std()-Y	Gyroscope, Body			(radians per sec)	Standard deviation (y)
- 25	tBodyGyro-std()-Z	Gyroscope, Body			(radians per sec)	Standard deviation (z)
- 26	tBodyGyroJerk-mean()-X	Gyroscope, Body, Jerk			(radians per sec)	Mean (x)
- 27	tBodyGyroJerk-mean()-Y	Gyroscope, Body, Jerk			(radians per sec)	Mean (y)
- 28	tBodyGyroJerk-mean()-Z	Gyroscope, Body, Jerk			(radians per sec)	Mean (z)
- 29	tBodyGyroJerk-std()-X	Gyroscope, Body, Jerk			(radians per sec)	Standard deviation (x)
- 30	tBodyGyroJerk-std()-Y	Gyroscope, Body, Jerk			(radians per sec)	Standard deviation (y)
- 31	tBodyGyroJerk-std()-Z	Gyroscope, Body, Jerk			(radians per sec)	Standard deviation (z)
- 32	fBodyAcc-mean()-X	Accelerometer, Body			(Hertz)	Mean (x)
- 33	fBodyAcc-mean()-Y	Accelerometer, Body			(Hertz)	Mean (y)
- 34	fBodyAcc-mean()-Z	Accelerometer, Body			(Hertz)	Mean (z)
- 35	fBodyAcc-std()-X	Accelerometer, Body			(Hertz)	Standard deviation (x)
- 36	fBodyAcc-std()-Y	Accelerometer, Body			(Hertz)	Standard deviation (y)
- 37	fBodyAcc-std()-Z	Accelerometer, Body			(Hertz)	Standard deviation (z)
- 38	fBodyAccJerk-mean()-X	Accelerometer, Body, Jerk			(Hertz)	Mean (x)
- 39	fBodyAccJerk-mean()-Y	Accelerometer, Body, Jerk			(Hertz)	Mean (y)
- 40	fBodyAccJerk-mean()-Z	Accelerometer, Body, Jerk			(Hertz)	Mean (z)
- 41	fBodyAccJerk-std()-X	Accelerometer, Body, Jerk			(Hertz)	Standard deviation (x)
- 42	fBodyAccJerk-std()-Y	Accelerometer, Body, Jerk			(Hertz)	Standard deviation (y)
- 43	fBodyAccJerk-std()-Z	Accelerometer, Body, Jerk			(Hertz)	Standard deviation (z)
- 44	fBodyGyro-mean()-X	Gyroscope, Body			(Hertz)	Mean (x)
- 45	fBodyGyro-mean()-Y	Gyroscope, Body			(Hertz)	Mean (y)
- 46	fBodyGyro-mean()-Z	Gyroscope, Body			(Hertz)	Mean (z)
- 47	fBodyGyro-std()-X	Gyroscope, Body			(Hertz)	Standard deviation (x)
- 48	fBodyGyro-std()-Y	Gyroscope, Body			(Hertz)	Standard deviation (y)
- 49	fBodyGyro-std()-Z	Gyroscope, Body			(Hertz)	Standard deviation (z)

- 7	|tBodyAcc-std()-Z	|Accelerometer, Body	(radians per sec)	|Standard deviation (z)
						
