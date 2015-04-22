
---
title: "run_analysis.R"
author: "d2i2k"
date: "Tuesday, April 21, 2015"
output: html_document
---

# Step 1a. Concatenate the training and test data sets by combining rows to create the Data set.

'''{r}
trainData <- read.table(file.path("C:","Users","d2i2k","Documents","data","X_train.txt"))
testData <- read.table(file.path("C:","Users","d2i2k","Documents","data","X_test.txt"))
Data <- rbind(trainData, testData)
dim(Data) 
'''

# Step 1b. Concatenate the training and test activities by combining rows to create the Activity vector.

'''{r}
trainActivity <- read.table(file.path("C:","Users","d2i2k","Documents","data","y_train.txt"))
testActivity <- read.table(file.path("C:","Users","d2i2k","Documents","data","y_test.txt"))
Activity <-  rbind(trainActivity, testActivity)
dim(Activity)
'''

# Step 1c. Concatenate the training and test subjects by combining rows to create the Subject vector.

'''{r}
trainSubject <- read.table(file.path("C:","Users","d2i2k","Documents","data","subject_train.txt"))
testSubject <- read.table(file.path("C:","Users","d2i2k","Documents","data","subject_test.txt"))
Subject <-  rbind(trainSubject, testSubject)
dim(subject)
'''

# Step 2. Assign variable names to columns of Data using the features vector. 

'''{r}
features <- read.table(file.path("C:","Users","d2i2k","Documents","data","features.txt"))
dim(features)
names(Data) <- features[, 2]   
'''

# Step 3a. Subset the first tidyData set by combining 521 columns without "BodyBody" in their names.

'''{r}
grep("BodyBody()", features[,2])
tidyData <- Data[c(1:515,555:561)]
dim(tidyData)
'''

# Step 3b. Assign variable names to columns of tidyData using the tidyfeatures vector.

'''{r}
tidyFeatures <- features[c(1:515,555:561),]
dim(tidyFeatures)
names(tidyData) <- tidyFeatures[, 2] 
''''

# Step 4a.  Index columns of tidyData to subset 24 mean columns for each measurement.

'''{r}
meanIndex <- grep("mean()", tidyFeatures[,2])
meanFreqIndex <- grep("meanFreq()", tidyFeatures[,2])
Mean <- tidyData[, c(1:3,41:43,81:83,121:123,161:163,266:268,345:347,424:426)]
dim(Mean)
'''

# Step 4b.  Index columns of tidyData to subset 24 standard deviation (SD) columns for each measurement

'''{r}
stdIndex <- grep("std()", tidyFeatures[,2])
SD <- tidyData[, c(4:6,44:46,84:86,124:126,164:166,269:271,348:350,427:429)]
dim(SD)
'''

# Step 4c. Merge descriptive statistics with subjects and activities by combining Mean and SD subsets.

'''{r}
Mean_SD <- cbind(Mean,SD)
dim(Mean_SD)
Subject_Activity <- read.csv(file.path("C:","Users","d2i2k","Documents","data","subject_activity.csv"))
dim(Subject_Activity)
Subject_Activity[,1] <- as.character(Subject_Activity[,1])
tidy <- cbind(Subject_Activity,Mean_SD)
dim(tidy)
'''

### Step 5. Calculate averages for each variable by subject and activity.

'''{r}
library(dplyr)
library(reshape2)
tidyData <-
  tidy %>%
  melt() %>%
  dcast(Subject_Activity ~ variable, fun.aggregate=mean) 
  
write.table(tidyData, file.path("C:","Users","d2i2k","Documents","data","tidyData.txt"),row.name=FALSE)
'''

