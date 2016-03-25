
# Getting and Cleaning Data
## Final Project CodeBook

The analysis, location at ~/results/Tidy.csv, can be re-generated
by calling executing run_analysis.R. The current version was developed
in R version 3.2.2 running in RStudio on Windows 7. 

The data were originally divided into 'test' and 'train' directories. This division was not relevent hear, so the dat set produced in this analysis derives from  simply joining the 'test' and 'train' data. Because the test and train tables were in the same formats, they were joined by simply appending one to the other. 

In the original 'test' and 'train' data sets, to pertinent labels were left in separate files: The participants, designated by integers 1-25, and the activities during with the data were collected, which are described in English, such as WALKING UPSTAIRS. 


After the datasets were merged and labeled, the columns were renamed with the following scheme:
- the abbreviation 'Acc' for 'Acceleration' was expanded to the whole word. 
_ the trailing pair of parentheses were removed from each variable name. 
- the camelCase was replaced with underscore_delimited
- the entire name was rendered lower case. 
