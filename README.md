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
1. parse and read in activity and feature information
2. parse and read in test data and training data
3. merge training data and test data
4. select those variable columns that has mean()/std() in their names, sort them by alphabetic order
5. aggregate data by grouping (subject,activity) pair, apply mean() to aggregated data
6. translate activity id to descriptive activity name, by merging with activity data frame
7. reorder column, drop activity Id column which is no longer needed
8. reorder table rows by ascending on columns (subject, activityDescription)
9. save to final.txt with write.table(), using "," as separator

## Output file format
output file is generated with the name "final.txt" in current working directory, with header kept and columns separately by ",".

## How to read in generated data file
data file can be read back in with: r <- read.table("final.txt", sep=",", header=TRUE)

## Sample output data
below is a snipet of data file with reduced number of columns for readability
> head(r, 5)[,1:10]
  subject activityDescription fBodyAccJerk.mean...X fBodyAccJerk.mean...Y fBodyAccJerk.mean...Z fBodyAccJerk.std...X fBodyAccJerk.std...Y fBodyAccJerk.std...Z fBodyAccMag.mean.. fBodyAccMag.std..
  1       1              LAYING           -0.95707388           -0.92246261            -0.9480609           -0.9641607           -0.9322179           -0.9605870        -0.86176765        -0.7983009
  2       1             SITTING           -0.98659702           -0.98157947            -0.9860531           -0.9874930           -0.9825139           -0.9883392        -0.94778292        -0.9284448
  3       1            STANDING           -0.99463080           -0.98541870            -0.9907522           -0.9950738           -0.9870182           -0.9923498        -0.98535636        -0.9823138
  4       1             WALKING           -0.17054696           -0.03522552            -0.4689992           -0.1335866            0.1067399           -0.5347134        -0.12862345        -0.3980326
  5       1  WALKING_DOWNSTAIRS           -0.02766387           -0.12866716            -0.2883347           -0.0863279           -0.1345800           -0.4017215         0.09658453        -0.1865303

