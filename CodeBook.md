
# Getting and Cleaning Data
## Final Project CodeBook

The analysis, location at ~/results/Tidy.csv, can be re-generated
by executing run_analysis.R. The current version was developed
in R version 3.2.2 running in RStudio on Windows 7. 

The data were downloaded from this URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. These data record accelerometer data from Galaxy S II smartphones that the participants wore on their waist while performing various activities. 

In the downloaded and extracted file, there were two subfolders, "test" and "train." Test contained 30% of the records are train contained 70%. 

The original data set contained 561 features. 
 
In the original "test" and "train" data sets, two pertinent labels were left in separate files: The participants in the study, designated by integers 1-25, and the activities during with the data were collected, which are described in English, such as WALKING UPSTAIRS. I added the activity and participant labels as columns to the main table, rather than leaving them in separate files.

Only features (column in our table) which denoted the mean or standard deviation of a measure were of interest. The others were discarded. In the naming scheme of the original data set, these features' names contained the string 'mean()' or 'std()', respectively. From the original list of 561 features, these 79 relevant features were extracted using grep.    

After the "train" and "test" data sets processed by extracting only relevant columns, and by adding the "Participant" and "Activity" column, the "test" and "train" data sets were merged. Because the test and train tables were in the same formats, they were joined by simply appending one to the other. 

Then, the information in the combined data set was grouped by activity and participant, and the remaining features were aggregated by calling mean(). The resulting data set is a table with 81 columns, the first two showing the "Activity" as a character string, and the second showing the participant, numbered 1 through 25. The remaining 79 columns are the average, by activity and participant, of the corresponding features in the original data. 

After the datasets were merged and labeled, the columns were renamed with the following scheme:
- the abbreviation 'Acc' for 'Acceleration' was expanded to the whole word. 
- the trailing pair of parentheses were removed from each variable name. 
- the camelCase was replaced with underscore_delimited
- the entire name was rendered lower case. 
- the prefix 't' which denoted 'time domain features' was replaced with the prefix 'time.'
- the prefix 'f' which denoted 'frequency domain features' was replaced with the prefix 'frequency'

Units: 
