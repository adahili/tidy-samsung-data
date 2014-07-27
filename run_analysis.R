#if (!file.exists("./data")) { dir.create ("./data")}

#fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#download.file(fileUrl, destfile = "./data/file.zip", method="curl")

#unzip("./data/file.zip", exdir="./data")


## Remove comments above to download and unzip the data file

## Retrieve all features
features <- read.table("./data/UCI HAR Dataset/features.txt")
colnames(features) <- c("Label", "Name")

## Use features that includes mean or standard deviation only
featuresInclude <- features[(grepl("mean", features$Name) | grepl("Mean", features$Name)| grepl("std", features$Name)), ]

## Headers and labels of the features to be included
headerInclude <- featuresInclude$Name
labelInclude <- featuresInclude$Label

X_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")[,labelInclude]
colnames(X_test) <- headerInclude

y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
colnames(y_test) <- "Activity"

subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
colnames(subject_test) <- "Subject"

TestData <- cbind(subject_test, y_test, X_test)


X_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")[,labelInclude]
colnames(X_train) <- headerInclude

y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
colnames(y_train) <- "Activity"

subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
colnames(subject_train) <- "Subject"

TrainData <- cbind(subject_train, y_train, X_train)

## Combine `test` and `train` data
Data <-rbind(TestData, TrainData)

write.table(Data, "data.txt", sep="\t")

Data2 <- aggregate( . ~ Activity + Subject, data=Data, FUN=mean)
