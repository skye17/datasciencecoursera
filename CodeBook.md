###Data processing
####Collection of the raw data
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist.Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz.
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and 
then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth 
low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only 
low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. 
###Creating the tidy data file
#####Guide to create a tidy data file
1. Download the raw data
2. Merge train and test sets
3. Extract mean and standard deviation characteristics of each measurement
4. Group merged set by subject who performed the activity and the activity
5. Summarise mean value of each characteristic in merged set to new data set.
For more thorough and detailed explanation look here: https://github.com/skye17/datasciencecoursera/blob/master/README.md

####Description of the variables in the tiny_data.txt file
181 observations of 68 variables
#####Subject
The subject who performed the activity for sample
1:30
#####Activity
Activity done by the subject  during at the moment the signal was captured
STANDING, LAYING, SITTING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS

######Note: 
All variables followed are mean values(averaged for each subject and each activity respectively) 
of characteristics described below. They are normalized, ranged in-1…1 and unitless

#####TimeBodyAccelerometerAverage_XYZ
Mean value of time domain signals of body linear acceleration for 3 axis. 
Signals are obtained from accelerometer
#####TimeGravityAccelerometerAverage_XYZ
Mean value of time domain signals of gravity linear acceleration for 3 axis. 
Signals are obtained from accelerometer
#####TimeBodyAccelerometerJerkAverage_XYZ
Mean value of jerk signals derived from body linear acceleration signals for 3 axis
#####TimeBodyGyroscopeAverage_XYZ
Mean value of time domain signals of angular velocity for 3 axis.
Signals are obtained from gyroscope
#####TimeBodyGyroscopeJerkAverage_XYZ
Mean value of jerk signals derived from angular velocity for 3 axis
#####TimeBodyAccelerometerMagnitudeAverage
Mean value of magnitude of three-dimensional body acceleration signals calculated using the Euclidean norm
#####TimeGravityAccelerometerMagnitudeAverage
Mean value of magnitude of three-dimensional gravity acceleration signals calculated using the Euclidean norm
#####TimeBodyAccelerometerJerkMagnitudeAverage
Mean value of magnitude of jerk body linear acceleration signals calculated using the Euclidean norm
#####TimeBodyGyroscopeMagnitudeAverage
Mean value of magnitude of three-dimensional angular velocity signals calculated using the Euclidean norm
#####TimeBodyGyroscopeJerkMagnitudeAverage
Mean value of magnitude of jerk angular velocity signals calculated using the Euclidean norm

Note: FFT - Fast Fourier Transform
#####FrequencyBodyAccelerometerAverage_XYZ
Mean value of signals of body linear acceleration for 3 axis being applied to FFT
#####FrequencyGravityAccelerometerAverage_XYZ
Mean value of signals of gravity linear acceleration for 3 axis being applied to FFT
#####FrequencyBodyAccelerometerJerkAverage_XYZ
Mean value of jerk signals derived from body linear acceleration signals for 3 axis being applied to FFT
#####FrequencyBodyGyroscopeAverage_XYZ
Mean value of signals of angular velocity for 3 axis being applied to FFT
#####FrequencyBodyGyroscopeJerkAverage_XYZ
Mean value of jerk signals derived from angular velocity for 3 axis being applied to FFT
#####FrequencyBodyAccelerometerMagnitudeAverage
Mean value of magnitude of three-dimensional body acceleration signals being applied to FFT calculated using the Euclidean norm 
#####FrequencyGravityAccelerometerMagnitudeAverage
Mean value of magnitude of three-dimensional gravity acceleration signals being applied to FFT calculated using the Euclidean norm
#####FrequencyBodyAccelerometerJerkMagnitudeAverage
Mean value of magnitude of jerk body linear acceleration signals being applied to FFT calculated using the Euclidean norm
#####FrequencyBodyGyroscopeMagnitudeAverage
Mean value of magnitude of three-dimensional angular velocity signals being applied to FFT calculated using the Euclidean norm
#####FrequencyBodyGyroscopeJerkMagnitudeAverage
Mean value of magnitude of jerk angular velocity signals being applied to FFT calculated using the Euclidean norm

#####TimeBodyAccelerometerDeviation_XYZ
Standard deviation of time domain signals of body linear acceleration for 3 axis
#####TimeGravityAccelerometerDeviation_XYZ
Standard deviation of of time domain signals of gravity linear acceleration for 3 axis
#####TimeBodyAccelerometerJerkDeviation_XYZ
Standard deviation of jerk signals derived from body linear acceleration signals for 3 axis
#####TimeBodyGyroscopeDeviation_XYZ
Standard deviation of time domain signals of angular velocity for 3 axis
#####TimeBodyGyroscopeJerkDeviation_XYZ
Standard deviation of jerk signals derived from angular velocity for 3 axis
#####TimeBodyAccelerometerMagnitudeDeviation
Standard deviation of magnitude of three-dimensional body acceleration signals calculated using the Euclidean norm
#####TimeGravityAccelerometerMagnitudeDeviation
Standard deviation of magnitude of three-dimensional gravity acceleration signals calculated using the Euclidean norm
#####TimeBodyAccelerometerJerkMagnitudeDeviation
Standard deviation of magnitude of jerk body linear acceleration signals calculated using the Euclidean norm
#####TimeBodyGyroscopeMagnitudeDeviation
Standard deviation of magnitude of three-dimensional angular velocity signals calculated using the Euclidean norm
#####TimeBodyGyroscopeJerkMagnitudeDeviation
Standard deviation of magnitude of jerk angular velocity signals calculated using the Euclidean norm


#####FrequencyBodyAccelerometerDeviation_XYZ
Standard deviation of signals of body linear acceleration for 3 axis being applied to FFT
#####FrequencyGravityAccelerometerDeviation_XYZ
Standard deviation of signals of gravity linear acceleration for 3 axis being applied to FFT
#####FrequencyBodyAccelerometerJerkDeviation_XYZ
Standard deviation of jerk signals derived from body linear acceleration signals for 3 axis being applied to FFT
#####FrequencyBodyGyroscopeDeviation_XYZ
Standard deviation of signals of angular velocity for 3 axis being applied to FFT
#####FrequencyBodyGyroscopeJerkDeviation_XYZ
Standard deviation of jerk signals derived from angular velocity for 3 axis being applied to FFT
#####FrequencyBodyAccelerometerMagnitudeDeviation
Standard deviation of magnitude of three-dimensional body acceleration signals being applied to FFT calculated using the Euclidean norm
#####FrequencyGravityAccelerometerMagnitudeDeviation
Standard deviation of magnitude of three-dimensional gravity acceleration signals being applied to FFT calculated using the Euclidean norm
#####FrequencyBodyBodyAccelerometerJerkMagnitudeDeviation
Standard deviation of magnitude of jerk body linear acceleration signals being applied to FFT calculated using the Euclidean norm
#####FrequencyBodyBodyGyroscopeMagnitudeDeviation
Standard deviation magnitude of three-dimensional angular velocity signals being applied to FFT calculated using the Euclidean norm
#####FrequencyBodyBodyGyroscopeJerkMagnitudeDeviation
Standard deviation of magnitude of jerk angular velocity signals being applied to FFT calculated using the Euclidean norm
