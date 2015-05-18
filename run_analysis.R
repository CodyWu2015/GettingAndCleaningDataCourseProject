# handy function to combine file path
f <- function(...)
{
  file.path(dataDir, ...)
}

# read and combine training/test data
parseData <- function(fxdata, fydata, fsubjects)
{
  # read measurements data
  xdata <- read.csv(f(fxdata),
                    sep="",
                    header=FALSE,
                    col.names=features$featureDescription,
                    stringsAsFactors=FALSE,
                    check.names=FALSE)

  # read activity data
  ydata <- read.csv(f(fydata),
                    sep="",
                    header=FALSE,
                    col.names="activityId",
                    stringsAsFactors=FALSE)

  # read subjects data
  subjects <- read.csv(f(fsubjects),
                       sep="",
                       header=FALSE,
                       col.names="subject",
                       stringsAsFactors=FALSE)

 
  # combine all data
  d <- cbind(xdata, ydata, subjects)
}

#args <- commandArgs(TRUE)
#print(args)

#dataDir <- args[[1]]
cat("dir=",dataDir,"\n", sep="")

# read in activity info
activity <- read.csv(f("activity_labels.txt"),
                     sep="",
                     header=FALSE,
                     col.names=c("activityId", "activityDescription"),
                     stringsAsFactors=FALSE,
                     check.names=FALSE)

# read in features info
features <- read.csv(f("features.txt"),
                     sep="",
                     header=FALSE,
                     col.names=c("featureId", "featureDescription"),
                     stringsAsFactors=FALSE,
                     check.names=FALSE)

# read in training/test data
trainDf <- parseData("train/X_train.txt", "train/y_train.txt", "train/subject_train.txt")
testDf  <- parseData("test/X_test.txt",   "test/y_test.txt",   "test/subject_test.txt")

# merge train data and test data
d <- rbind(trainDf, testDf)

# only keep the variable column with mean()/std() in their names
# sort the variable columns alphabetically at the same time to make it more readable
v <- sort(names(d)[grep("(mean|std)\\(\\)", names(d))])
e <- d[,v]

# aggregate each variable column by subject and activityId, using "mean" function
f <- aggregate(e, by=list(subject=d$subject, activityId=d$activityId), mean)

# get activity description from activityId by merging with activity df, and remove the activityId
g <- merge(activity,f)

# select & reorder columns to make its column look like: subject,activityDescription,variable1,variable2,...,variableN
h <- g[,c(3,2,seq(4,ncol(g)))]

# order rows by (subject,activityDescription), reset rownames to force row numbers to re-generate
i <- h[order(h$subject, h$activityDescription),]
rownames(i) <- NULL

# save to table
write.table(i, file="final.txt", row.names=FALSE, sep=",")

#can be recovered by
#r <- read.table("final.txt", sep=",", header=TRUE)

# print head of table
print(head(i, 5))
