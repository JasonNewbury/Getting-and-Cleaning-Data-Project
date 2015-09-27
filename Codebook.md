---
title: "Codebook.md"
output: html_document
---
DATA DICTIONARY - Run Annalysis

      important: assumes that the data for test and train are in folders inside your working directory and not that the files are freely in your workin directory


      Subject: particapant Id number range 1-30
      
      Activity: describes the activity taking place 
        walking
        walking_upstairs
        walking_downstairs
        sitting
        standing
        laying
        
      Various measurements: These variables are the reading from the samsung device during each activity
        x at the end of a variable would be the value in the x plane
        y at the end of a variable would be the value in the y plane
        z at the end of a variable would be the value in the z plane
        Acc stands for accelerometer 
        Gyro stands for gyroscope
        All measuremeants are the mean of that measurement for each of subject during a particular activity 
        
        The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.          These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using         a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the           acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using             another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

        Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ          and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm                 (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

        Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ,                  fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

        These signals were used to estimate variables of the feature vector for each pattern:  
        '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

          tBodyAcc-XYZ
          tGravityAcc-XYZ
          tBodyAccJerk-XYZ
          tBodyGyro-XYZ
          tBodyGyroJerk-XYZ
          tBodyAccMag
          tGravityAccMag
          tBodyAccJerkMag
          tBodyGyroMag
          tBodyGyroJerkMag
          fBodyAcc-XYZ
          fBodyAccJerk-XYZ
          fBodyGyro-XYZ
          fBodyAccMag
          fBodyAccJerkMag
          fBodyGyroMag
          fBodyGyroJerkMag

          The set of variables that were estimated from these signals are: 

          mean(): Mean value
          std(): Standard deviation
 