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
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. The time-domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. They were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.  Similarly, the acceleration signal was separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low-pass Butterworth filter with corner frequency of 0.3 Hz. 
tBodyAcc-XYZ,
tGravityAcc-XYZ,
tBodyAccJerk-XYZ,
tBodyGyro-XYZ,
tBodyGyroJerk-XYZ,
tBodyAccMag,
tGravityAccMag,
tBodyAccJerkMag,
tBodyGyroMag,
tBodyGyroJerkMag,
fBodyAcc-XYZ,
fBodyAccJerk-XYZ,
fBodyGyro-XYZ,
fBodyAccMag,
fBodyAccJerkMag,
fBodyGyroMag,
fBodyGyroJerkMag

The set of variables estimated from these signals are: 

mean(): Mean value,
std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These were used on the angle() variable:

gravityMean,
tBodyAccMean,
tBodyAccJerkMean,
tBodyGyroMean,
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'