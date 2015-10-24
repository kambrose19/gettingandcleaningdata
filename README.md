###README for _Getting and Cleaning Data_ Final Project

#####Components
This project contains only one script, run_analysis.R

The data used is from:  
>[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

From that the following files are used  
    X_train.txt  
    y_train.txt  
    subject_train.txt  
    X_test.txt  
    y_test.txt  
    subject_test.txt  
    features.txt  
    activity_labels.txt  

#####Requirements
R3.2.2 for Windows X64 was used during development

To run the script, the following R packages must be installed (The script, by design, will not do it for you)
* dplyr (0.4.3 was used during development)

The data files listed above need to be in the same directory as the R script

The output data set will be written to same directory

#####Script Functionality
The script performs the following tasks on the data:
* Load Needed Libraries
* Load Data Files
* Load Naming Files
* Name columns for Train data
* Name columns for Test data
* Combine Train and Test frames
* Keep only standard deviation and mean measures# This gets rid duplicate column names so dplyr functions can be used later
* Transform column names to be (slightly) more readable
* Add subject and activity label to measurements
* Add activity names by merging on activity label
* Group by Subject, then activity, taking the mean of all our measurements
* Write resultent frame to file
