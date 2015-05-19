# Getting And Cleaning Data CourseProject ReadMe

# Repo files
This repo ontains the following files
* run_analysis.R - the main script
* final.txt - generated sample output file
* README.md - this readme file
* CodeBook.md - CodeBook describing data in the generated file

## Introduction
The script works on Samsung smart phone data from [Samsung data](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and generate processed tidy data with the name "final.txt" in the current working directory.

SamSung data contains two set of data, i.e. training data set as well as test data set placed separately in training and test directory.

The script merges training data and test data, keeping only those feature variables giving mean and std of the measurements, and further average the data grouping by subject + activity pair.

## Script work flow
script works by following the below steps
* parse and read in activity and feature information
* parse and read in test data and training data
* merge training data and test data
* select those variable columns that has mean()/std() in their names, sort them by alphabetic order
* translate activity id to descriptive activity name, by merging with activity data frame
* aggregate data by grouping (subject,activity) pair, apply mean() to aggregated data, using reshape2 package's melt + dcast
* generate both wide format and long format
* save to final_wide.txt and final_long.txt with write.table(), using "," as separator

## Two ways to aggregate data
two ways to aggregate data is presented in the script
* using aggregate() function
* using reshape2's melt() + dcast() function

## Output file format
both wide and long format output files are generated
* "final_wide.txt" for file generated in wide format
* "final_long.txt" for file generated in long format

## How to read in generated data file
data file can be read back in with: 
* twide <- read.table("final_wide.txt", sep=",", header=TRUE)
* tlong <- read.table("final_long.txt", sep=",", header=TRUE)

## Sample output data
below is a snipet of data file with reduced number of columns for readability
> source("r.R")  
[1] "sample wide format:(only first 6 columns displayed)"  
  subject activityDescription fBodyAccJerk-mean()-X fBodyAccJerk-mean()-Y fBodyAccJerk-mean()-Z fBodyAccJerk-std()-X  
1       1              LAYING           -0.95707388           -0.92246261            -0.9480609           -0.9641607  
2       1             SITTING           -0.98659702           -0.98157947            -0.9860531           -0.9874930  
3       1            STANDING           -0.99463080           -0.98541870            -0.9907522           -0.9950738  
4       1             WALKING           -0.17054696           -0.03522552            -0.4689992           -0.1335866  
5       1  WALKING_DOWNSTAIRS           -0.02766387           -0.12866716            -0.2883347           -0.0863279  
[1] "sample long format:"  
  subject activityDescription              variable       value  
1       1              LAYING fBodyAccJerk-mean()-X -0.95707388  
2       1             SITTING fBodyAccJerk-mean()-X -0.98659702  
3       1            STANDING fBodyAccJerk-mean()-X -0.99463080  
4       1             WALKING fBodyAccJerk-mean()-X -0.17054696  
5       1  WALKING_DOWNSTAIRS fBodyAccJerk-mean()-X -0.02766387  
