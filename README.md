The run_analysis.R is an R script that creates a clean data from
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

It is assumed that the unzipped (raw) files are in "./data" folder. Data files can be automatically downloaded and unzipped by uncommenting the first six lines of the script.

A description of the data can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Read the features.txt for the list of features and features_info.txt for feature information. The list of features is used as headers for the data set.

The script merges the test and training data sets and extracts only the measurements (or features) on the mean and standard deviation for each measurement. This means that mad, max, min, sma, etc. will be discarded.
