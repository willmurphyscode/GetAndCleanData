#packages
library(dplyr)

# Merge test and training data
        


# Extract only the measurements on the mean and standard deviation for each measurement.

namesAndIxesOfVariablesToKeep <- function() {
  # read the file
  relativePathToFeaturesFile <- "./data./UCI HAR Dataset/features.txt"
  dat <- read.table(relativePathToFeaturesFile)
  
  # grep for columns containing 'mean' or std
  ixes <- grep("-(mean|std)", dat$V2, ignore.case = TRUE)
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
  
  
  pathToSubjectsForTest <- "./data/UCI HAR Dataset/test/subject_test.txt"
  testSubjects <- read.table(pathToSubjectsForTest)
  testData <- mutate(testData, Subject = testSubjects$'V1')
  
  pathToTrainData <- "./data/UCI HAR Dataset/train/X_train.txt"
  trainData <- read.table(pathToTrainData)
  trainData <- tbl_df(trainData)
  trainData <- select(trainData, featuresToKeep)
  
  pathToSubjectsForTrain <- "./data/UCI HAR Dataset/train/subject_train.txt"
  trainSubjects <- read.table(pathToSubjectsForTrain)
  
  trainData <- mutate(trainData, Subject = trainSubjects$'V1')
  
  # append the column that labels the activity to each of the data sets. 
  pathToTestDataLabels <- "./data/UCI HAR Dataset/test/y_test.txt"
  testDataLabels <- read.table(pathToTestDataLabels)
  # single quotes are important, see https://github.com/hadley/dplyr/issues/1554
  testData <- mutate(testData, ActivityLabels = testDataLabels$'V1')
  
  pathToTrainDataLabels <- "./data/UCI HAR Dataset/train/y_train.txt"
  trainDataLabels <- read.table(pathToTrainDataLabels)
  
  trainData <- mutate(trainData, ActivityLabels = trainDataLabels$'V1')
  
  full <- union(trainData, testData)
  
  # replace the integer activity labels with proper factor with names, 
  #and make sure the Subject column is a factor
  full <- mutate(full, Subject = factor(Subject), ActivityLabels = sapply(full$ActivityLabels,  function(x){ activityLabels[x] }))
  full
  
}

# Uses descriptive activity names to name the activities in the data set. 

# Appropriately labels the data set with descriptive variable names. 

# From the data set in step 4, create a second, independent tiday data set with the average of each variable for each
# activity and each subject. 
makeTidySummary <- function(dat) {
  #toTakeMeanOf <- names(select(dat, -ActivityLabels, -Subject))
  #dots <- sapply(toTakeMeanOf, function(x){ substitute(mean(x), list(x = as.name(x))) })
  #summarise(group_by(dat, Subject, ActivityLabels), mean = mean)
  #do.call(summarise, c(list(.data=dat, dots)))
  dat %>%
    group_by(ActivityLabels, Subject) %>%
    summarise_each(funs(mean))
  
}

res <- makeTidySummary(getMergedDataSet(featuresToKeep, activities))
# write the resulting data to a new file. 
if(!file.exists("./results")) {
  dir.create("./results")
}
resultPath = "./results/Tidy.csv"
write.csv(res, resultPath)
