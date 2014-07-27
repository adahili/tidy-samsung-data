The run_analysis.R is an R script that creates a clean data from
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A description of the data can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

It is assumed that the unzipped (raw) files are in "./data" folder. Data files can be automatically downloaded and unzipped by uncommenting the first six lines of the script.

The script merges the test and training data sets and extracts only the measurements on the mean and standard deviation for each measurement.
