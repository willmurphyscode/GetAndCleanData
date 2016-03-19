#packages
library(dplyr)

# Merge test and training data
        


# Extract only the measurements on the mean and standard deviation for each measurement.

namesAndIxesOfVariablesToKeep <- function() {
  # read the file
  relativePathToFeaturesFile <- "./data./UCI HAR Dataset/features.txt"
  dat <- read.table(relativePathToFeaturesFile)
  
  # grep for columns containing 'mean' or std
  ixes <- grep("mean|std", dat$V2, ignore.case = TRUE)
  #return a vector of the indices of these columns, whose 
  #names are the names of these columns. 
  names(ixes) <- dat$V2[ixes]
  ixes
  
}
getActivityNamesAndIntegerLabels <- function() {
  pathToLabelFile <- "./data/UCI HAR Dataset/activity_labels.txt"
  dat <- read.table(pathToLabelFile)
  activities <- factor(dat$V1, labels = dat$V2)
  activities
}
activities <- getActivityNamesAndIntegerLabels()

featuresToKeep <- namesAndIxesOfVariablesToKeep()

getMergedDataSet <- function(featuresToKeep, activityLabels) {
  
  pathToTestData <- "./data/UCI HAR Dataset/test/X_test.txt"
  testData <- read.table(pathToTestData)
  testData <- tbl_df(testData)
  testData <- select(testData, featuresToKeep)
  
  pathToTrainData <- "./data/UCI HAR Dataset/train/X_train.txt"
  trainData <- read.table(pathToTrainData)
  trainData <- tbl_df(trainData)
  
  # append the column that labels the activity to each of the data sets. 
  pathToTestDataLabels <- "./data/UCI HAR Dataset/test/y_test.txt"
  testDataLabels <- read.table(pathToTestDataLabels)
  # single quotes are important, see https://github.com/hadley/dplyr/issues/1554
  testData <- mutate(testData, ActivityLabels = testDataLabels$'V1')
  testData
  
  
  
}

# Uses descriptive activity names to name the activities in the data set. 

# Appropriately lables the data set with descriptive variable names. 

# From the data set in step 4, create a second, independent tiday data set with the average of each variable for each
# activity and each subject. 