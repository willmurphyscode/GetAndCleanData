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
featuresToKeep <- namesAndIxesOfVariablesToKeep()

getMergedDataSet <- function(featuresToKeep) {
  
  pathToTestData <- "./data/UCI HAR Dataset/test/X_test.txt"
  testData <- read.table(pathToTestData)
  pathToTrainData <- "./data/UCI HAR Dataset/train/X_train.txt"
  trainData <- read.table(pathToTrainData)
  
  
  
}

# Uses descriptive activity names to name the activities in the data set. 

# Appropriately lables the data set with descriptive variable names. 

# From the data set in step 4, create a second, independent tiday data set with the average of each variable for each
# activity and each subject. 