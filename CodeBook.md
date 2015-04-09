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

 	Body Accelerometer (radians per second)
- Subject_Activity|	 Mean(x)     |	SD(x)       |	Mean(y)     |	SD(y)       |	Mean(z)     |	SD(z)
- --------------------- |------------  |------------ |------------ |------------ |------------ |------------
- 1 _Laying	            | 0.221598244	|-0.928056469	|-0.040513953	|-0.836827406	|-0.113203554	|-0.826061402
- 1 _Sitting            |	0.261237565	|-0.977229008	|-0.001308288	|-0.922618642	|-0.104544182	|-0.939586291
- 1 _Standing	          | 0.278917629	|-0.995759902	|-0.01613759	 |-0.973190056	|-0.110601818	|-0.979775877
- 1 _Walking	           | 0.277330759	|-0.283740259	|-0.017383819	| 0.114461337	|-0.111148104	|-0.260027902



