# Load Needed Libraries
library(dplyr)
library(utils)

# Load Data Files
Xtrain <- read.table("./X_train.txt")
Ytrain <- read.table("./y_train.txt")
Subtrain <- read.table("./subject_train.txt")
Xtest <- read.table("./X_test.txt")
Ytest <- read.table("./y_test.txt")
Subtest <- read.table("./subject_test.txt")

# Load Naming Files
featNames <- read.table("features.txt")
labelList <- read.table("activity_labels.txt")
names(labelList) <- c("Label", "Activity")

# Name columns for Train data
names(Subtrain) <- c("Subject")
names(Ytrain) <- c("Label")
names(Xtrain) <- featNames$V2

# Name columns for Test data
names(Subtest) <- c("Subject")
names(Ytest) <- c("Label")
names(Xtest) <- featNames$V2

# Combine Train and Test frames
STT <- rbind(Subtrain, Subtest)
YTT <- rbind(Ytrain, Ytest)
XTT <- rbind(Xtrain, Xtest)

# Keep only standard deviation and mean measures
# This gets rid duplicate column names so dplyr
# functions can be used later
TTMS <- XTT[,grepl("(std|mean)\\(", colnames(XTT))]

# Transform column names to be (slightly) more readable
tidyFeat <- featNames[grepl("(std|mean)\\(", featNames$V2),]
featHold <- gsub("^t", "MeanTime", tidyFeat$V2)
featHold <- gsub("^f", "MeanFreq", featHold)
featHold <- gsub("-std\\(\\)-?", "StdDev", featHold)
featHold <- gsub("-mean\\(\\)-?", "Mean", featHold)
featHold <- c("Subject", "Activity", featHold)

# Add subject and activity label to measurements
TTCombo <- cbind(STT, YTT, TTMS)

# Add activity names by merging on activity label
TT <- merge(TTCombo, labelList)

# Group by Subject, then activity, taking the mean of all our measurements
SubAct <- TT %>% group_by(Subject,Activity) %>% summarize_each(funs(mean), matches("(std|mean)"))
names(SubAct) <- featHold

# Write resultent frame to file
<<<<<<< HEAD
write.table(SubAct, file = "ProjectData.txt", row.name = FALSE)
=======
write.table(SubAct, file = "ProjectData.txt")
>>>>>>> e29229f611993eb7aeb72928fa69b17d728bd315
