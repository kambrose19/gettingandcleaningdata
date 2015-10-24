###Codebook For Coursera _Getting and Cleaning Data_ Final Project

#####Raw Data
The raw data came from
>[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

The data itself is telemetry from phones taken during several activities by a set of subjects.  The original paper describes it in more detail.

#####Transformation of Data
Initially, we merged the Training and Test data of the original study together with subject ID and activity ID.  We than kept only the orginal data measuring mean and standard deviation of readings.  The data was labeled, with labels being changed slightly from the original in the interest of readability.

The mean of each variable was computed for each subject and activity pairing (e.g. Subject 5 Walking, etc.)  This final data frame is presented in "wide" format and was written to a text file

#####Data Components
* Subject  
 ID of the subject of these summarized observations
* Activity  
 Activity being performed during these summarized observations

The remaining fields represent the transformed raw data.  The names can be roughly tranlated as follows:  
    Mean as the beginning signifies the transform applied by subject and activity during this Project  
    Time or Freq signifies the whether the original data was time or frequency related  
    Mean or StdDev signifies whether the original data was mean or standard deviation based  
    An X, Y or Z at the end specifies a directional axis, where appropriate  
    In between Time/Freq and Mean/StdDev is a description of the original raw data  
* MeanTimeBodyAccMeanX
* MeanTimeBodyAccMeanY
* MeanTimeBodyAccMeanZ
* MeanTimeBodyAccStdDevX
* MeanTimeBodyAccStdDevY
* MeanTimeBodyAccStdDevZ
* MeanTimeGravityAccMeanX
* MeanTimeGravityAccMeanY
* MeanTimeGravityAccMeanZ
* MeanTimeGravityAccStdDevX
* MeanTimeGravityAccStdDevY
* MeanTimeGravityAccStdDevZ
* MeanTimeBodyAccJerkMeanX
* MeanTimeBodyAccJerkMeanY
* MeanTimeBodyAccJerkMeanZ
* MeanTimeBodyAccJerkStdDevX
* MeanTimeBodyAccJerkStdDevY
* MeanTimeBodyAccJerkStdDevZ
* MeanTimeBodyGyroMeanX
* MeanTimeBodyGyroMeanY
* MeanTimeBodyGyroMeanZ
* MeanTimeBodyGyroStdDevX
* MeanTimeBodyGyroStdDevY
* MeanTimeBodyGyroStdDevZ
* MeanTimeBodyGyroJerkMeanX
* MeanTimeBodyGyroJerkMeanY
* MeanTimeBodyGyroJerkMeanZ
* MeanTimeBodyGyroJerkStdDevX
* MeanTimeBodyGyroJerkStdDevY
* MeanTimeBodyGyroJerkStdDevZ
* MeanTimeBodyAccMagMean
* MeanTimeBodyAccMagStdDev
* MeanTimeGravityAccMagMean
* MeanTimeGravityAccMagStdDev
* MeanTimeBodyAccJerkMagMean
* MeanTimeBodyAccJerkMagStdDev
* MeanTimeBodyGyroMagMean
* MeanTimeBodyGyroMagStdDev
* MeanTimeBodyGyroJerkMagMean
* MeanTimeBodyGyroJerkMagStdDev
* MeanFreqBodyAccMeanX
* MeanFreqBodyAccMeanY
* MeanFreqBodyAccMeanZ
* MeanFreqBodyAccStdDevX
* MeanFreqBodyAccStdDevY
* MeanFreqBodyAccStdDevZ
* MeanFreqBodyAccJerkMeanX
* MeanFreqBodyAccJerkMeanY
* MeanFreqBodyAccJerkMeanZ
* MeanFreqBodyAccJerkStdDevX
* MeanFreqBodyAccJerkStdDevY
* MeanFreqBodyAccJerkStdDevZ
* MeanFreqBodyGyroMeanX
* MeanFreqBodyGyroMeanY
* MeanFreqBodyGyroMeanZ
* MeanFreqBodyGyroStdDevX
* MeanFreqBodyGyroStdDevY
* MeanFreqBodyGyroStdDevZ
* MeanFreqBodyAccMagMean
* MeanFreqBodyAccMagStdDev
* MeanFreqBodyBodyAccJerkMagMean
* MeanFreqBodyBodyAccJerkMagStdDev
* MeanFreqBodyBodyGyroMagMean
* MeanFreqBodyBodyGyroMagStdDev
* MeanFreqBodyBodyGyroJerkMagMean
* MeanFreqBodyBodyGyroJerkMagStdDev
