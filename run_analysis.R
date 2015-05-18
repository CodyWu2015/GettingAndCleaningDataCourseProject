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

# get data dir either from passed in arguments, if invoked in Rscript: "Rscript run_analysis.R <dir>"
#args <- commandArgs(TRUE)
#print(args)
#dataDir <- args[[1]]

# or directly using working dir
#dataDir <- getwd()

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

# ---------------------------------------------------------------
# data aggregation generation method 1: aggregate + merge + order
# ---------------------------------------------------------------
# e <- d[,v]
# f <- aggregate(e, by=list(subject=d$subject, activityId=d$activityId), mean)
# g <- merge(activity,f)
# h <- g[,c(3,2,seq(4,ncol(g)))]
# i <- h[order(h$subject, h$activityDescription),]
# rownames(i) <- NULL


# --------------------------------------------------
# data aggregation generation method 2: melt + dcast
# --------------------------------------------------
library(reshape2)
e <- merge(activity,d)
f <- e[c("subject", "activityDescription", v)]
g <- melt(f, id=c("subject", "activityDescription"))
twide <- dcast(g, subject + activityDescription ~ ..., mean)
tlong <- melt(twide, id=c("subject", "activityDescription"))

# save to table both wide format and long format
write.table(twide, file="final_wide.txt", row.names=FALSE, sep=",")
write.table(tlong, file="final_long.txt", row.names=FALSE, sep=",")

#can be recovered by
#r <- read.table("final_wide.txt", sep=",", header=TRUE)

# print head of table
print("sample wide format:(only first 6 columns displayed)")
print(head(twide[1:6], 5))

print("sample long format:")
print(head(tlong, 5))
