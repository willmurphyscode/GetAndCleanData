
# Getting and Cleaning Data
## Final Project CodeBook

The analysis, location at ~/results/Tidy.csv, can be re-generated
by executing run_analysis.R. The current version was developed
in R version 3.2.2 running in RStudio on Windows 7. 

The data were downloaded from this URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. 

NOTE: All acceleration units are reported in standard gravities, "g". 

*All columns were calculated as the mean of the original feature of the same name when grouped by activity and participant.*

Columns with body_acceleration were calculated (in the original set, not by this analysis) by subtracting gravity from the observed acceleration.  

Columns beginning with time the original data set calls "time domain." Columns beginning with "frequency" the original data set calls "frequency domain", and are the Fast Fourier Transform (FFT) of the data in the "time domain". The FFT was performed before my analysis.

Units: 
activity - character string, treated as factor, one of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
participant - designation for the subject wearing the smart phone. Numbers 1 - 30
time_body_acceleration_mean_x - in standard gravity units, 'g', the mean x axis accelaration
time_body_acceleration_mean_y - in standard gravity units, 'g', the mean y axis accelaration
time_body_acceleration_mean_z - in standard gravity units, 'g', the mean z axis accelaration
time_body_acceleration_std_x - in standard gravity units, 'g', the mean of the original study's standard deviation of x axis accelaration
time_body_acceleration_std_y - in standard gravity units, 'g', the mean of the original study's standard deviation of y axis accelaration
time_body_acceleration_std_z - in standard gravity units, 'g', the mean of the original study's standard deviation of z axis accelaration
time_body_jerk_mean_x - first derivative of "time_body_acceleration_mean_x" with respect to time. 
time_body_jerk_mean_y - first derivative of "time_body_acceleration_mean_y" with respect to time.
time_body_jerk_mean_z - first derivative of "time_body_acceleration_mean_z" with respect to time.
time_body_jerk_std_x - first derivative of "time_body_acceleration_std_x" with respect to time. 
time_body_jerk_std_y - first derivative of "time_body_acceleration_std_y" with respect to time.
time_body_jerk_std_z - first derivative of "time_body_acceleration_std_z" with respect to time.
time_body_gyro_mean_x - mean of x axis angular velocity in radians / second
time_body_gyro_mean_y - mean of y axis angular velocity in radians / second
time_body_gyro_mean_z - mean of z axis angular velocity in radians / second
time_body_gyro_std_x - standard deviation of x axis angular velocity in radians / second
time_body_gyro_std_y - standard deviation of y axis angular velocity in radians / second
time_body_gyro_std_z - standard deviation of y axis angular velocity in radians / second
time_body_gyro_jerk_mean_x - mean x axis angular jerk in radians / second / second / second. 
time_body_gyro_jerk_mean_y - mean y axis angular jerk in radians / second / second / second.
time_body_gyro_jerk_mean_z - mean z axis angular jerk in radians / second / second / second.
time_body_gyro_jerk_std_x - standard deviation x axis angular jerk in radians / second / second / second.
time_body_gyro_jerk_std_y - standard deviation y axis angular jerk in radians / second / second / second.
time_body_gyro_jerk_std_z - standard deviation z axis angular jerk in radians / second / second / second.
time_body_acc_magnitude_mean - the body acceleration mean, in gravities, formed by Euclidean combination of x, y, and z axis accelerations
time_body_acc_magnitude_std - the standard deviation of the body acceleration magniude, in gravities. Formed by Euclidean combination of x, y, and z acclerations 
time_gravity_acc_magnitude_mean - the mean of graviational acceleration in the time domain, formed by Euclidean combination of 
time_gravity_acc_magnitude_std - the standard deviation of graviational acceleration in the time domain, formed by Euclidean combination of
time_body_jerk_magnitude_mean - the mean Euclidean combination of x, y, and z axis jerk  
time_body_jerk_magnitude_std - the standard deviation of the Euclidean combination of x, y, and z axis jerk 
time_body_gyro_magnitude_mean - the mean of the Euclidean combination of x, y, and z axis angular velocity in radians / second. 
time_body_gyro_magnitude_std -  the standard deviation of the Euclidean combination of x, y, and z axis angular velocity in radians / second.
time_body_gyro_jerk_magnitude_mean - the mean of the Euclidean combination of x, y, and z axis angular jerk in radians / second / second / second. 
time_body_gyro_jerk_magnitude_std - the standard deviation of the Euclidean combination of x, y, and z axis angular jerk in radians / second / second / second.
frequency_body_acceleration_mean_x - mean of the FFT of the body acceleartion in the x axis 
frequency_body_acceleration_mean_y - mean of the FFT of the body acceleartion in the y axis
frequency_body_acceleration_mean_z - mean of the FFT of the body acceleartion in the z axis
frequency_body_acceleration_std_x - standard deviation of the FFT of the body acceleartion in the x axis
frequency_body_acceleration_std_y - standard deviation of the FFT of the body acceleartion in the y axis
frequency_body_acceleration_std_z - standard deviation of the FFT of the body acceleartion in the z axis
frequency_body_acceleration_mean_freq_x - mean frequency of the FFT of the body acceleartion in the x axis
frequency_body_acceleration_mean_freq_y - mean frequency of the FFT of the body acceleartion in the y axis
frequency_body_acceleration_mean_freq_z - mean frequency of the FFT of the body acceleartion in the z axis
frequency_body_jerk_mean_x - mean of the FFT of the x axis jerk
frequency_body_jerk_mean_y - mean of the FFT of the y axis jerk
frequency_body_jerk_mean_z - mean of the FFT of the z axis jerk
frequency_body_jerk_std_x - standard deviation of the FFT of the z axis jerk
frequency_body_jerk_std_y - standard deviation of the FFT of the z axis jerk
frequency_body_jerk_std_z - standard deviation of the FFT of the z axis jerk
frequency_body_jerk_mean_freq_x - mean frequency of the FFT of the body jerk in the x axis
frequency_body_jerk_mean_freq_y - mean frequency of the FFT of the body jerk in the y axis
frequency_body_jerk_mean_freq_z - mean frequency of the FFT of the body jerk in the z axis
frequency_body_gyro_mean_x - mean of the FFT of the x axis angular velocity
frequency_body_gyro_mean_y - mean of the FFT of the y axis angular velocity
frequency_body_gyro_mean_z - mean of the FFT of the z axis angular velocity
frequency_body_gyro_std_x - standard deviation of the FFT of the x axis angular velocity
frequency_body_gyro_std_y - standard deviation of the FFT of the y axis angular velocity
frequency_body_gyro_std_z - standard deviation of the FFT of the z axis angular velocity
frequency_body_gyro_mean_freq_x - mean frequency of the FFT of the x axis angular velocity
frequency_body_gyro_mean_freq_y - mean frequency of the FFT of the y axis angular velocity
frequency_body_gyro_mean_freq_z - mean frequency of the FFT of the z axis angular velocity
frequency_body_acc_magnitude_mean - mean of the FFT of the Euclidean combination of x, y, and z axis accleration
frequency_body_acc_magnitude_std - standard devation of the FFT of the Euclidean combination of the x, y, and z axis acceleration
frequency_body_acc_magnitude_mean_freq  - mean frequency of the FFT of the Euclidean combination of the x, y, and z axis acceleration
frequency_body_body_jerk_magnitude_mean - mean of the FFT of the Euclidean combination of x, y, and z axis jerk
frequency_body_body_jerk_magnitude_std - standard deviation of the FFT of the Euclidean combination of x, y, and z axis jerk
frequency_body_body_jerk_magnitude_mean_freq - mean frequency of the FFT of the Euclidean combination of x, y, and z axis jerk
frequency_body_body_gyro_magnitude_mean - mean of the FFT of the Euclidean combination of the x, y, and z axis angular velocity
frequency_body_body_gyro_magnitude_std - standard deviation of the FFT of the Euclidean combination of the x, y, and z axis angular velocity
frequency_body_body_gyro_magnitude_mean_freq - mean frequency of the FFT of the Euclidean combination of the x, y, and z axis angular velocity
frequency_body_body_gyro_jerk_magnitude_mean - mean of the FFT of the Euclidean combination of the x, y, and z axis angular jerk
frequency_body_body_gyro_jerk_magnitude_std - standard deviation of the FFT of the Euclidean combination of the x, y, and z axis angular jerk
frequency_body_body_gyro_jerk_magnitude_mean_freq - mean frequency of the FFT of the Euclidean combination of the x, y, and z axis angular jerk






