## adding libraries

library(reshape2)
library(dplyr)

## reading the files in, traversing the file structure



setwd("test")
xtest<- read.table("x_test.txt")
ytest<- read.table("y_test.txt")
subsjecttest<-read.table("subject_test.txt")

setwd("..")
setwd("train")
setwd("..")

xtrain<- read.table("x_train.txt")
ytrain<- read.table("y_train.txt")
subsjecttrain<-read.table("subject_train.txt")

## adding the subject id to the front of the data and the test data to the back

datatest <- cbind(xtest,ytest)
datatest <- cbind(subsjecttest,datatest)

datatrain <- cbind(xtrain,ytrain)
datatrain <- cbind(subjecttrain,datatrain)

## add the rows of datatrain to the bottom of datatest
datamerge <- rbind(datatest,datatrain)

## seperate out the mean and std. I choose the variables that ended in mean() , since I added the subject id to the front each result is one spot farther e.g. 201 in the original is 202 here
datasimple <- cbind(datamerge[1],datamerge[2],datamerge[3],datamerge[4],datamerge[5],datamerge[6],datamerge[7],datamerge[42],datamerge[43],datamerge[44],datamerge[45],datamerge[46],datamerge[47],datamerge[82],datamerge[83],datamerge[84],datamerge[85],datamerge[86],datamerge[87],datamerge[122],datamerge[123],datamerge[124],datamerge[125],datamerge[126],datamerge[127],datamerge[162],datamerge[163],datamerge[164],datamerge[165],datamerge[166],datamerge[167],datamerge[202],datamerge[203], datamerge[215],datamerge[216],datamerge[228],datamerge[229],datamerge[241],datamerge[242],datamerge[254],datamerge[255],datamerge[267],datamerge[268],datamerge[269],datamerge[270],datamerge[271],datamerge[272],datamerge[346],datamerge[347],datamerge[348],datamerge[349],datamerge[350],datamerge[351],datamerge[425],datamerge[426],datamerge[427],datamerge[428],datamerge[429],datamerge[430],datamerge[504],datamerge[505],datamerge[517],datamerge[518],datamerge[530],datamerge[531],datamerge[543],datamerge[544],datamerge[563])

## change the last column name to be activity
names(datasimple)[68] <- "activity"

datasimple$activity<- mapvalues(datasimple$activity,1,"walking")
datasimple$activity<- mapvalues(datasimple$activity,2,"walking_upstairs")
datasimple$activity<- mapvalues(datasimple$activity,3,"walking_downstairs")
datasimple$activity<- mapvalues(datasimple$activity,4,"sitting")
datasimple$activity<- mapvalues(datasimple$activity,5,"standing")
datasimple$activity<- mapvalues(datasimple$activity,6,"laying")

## naming the columns

names(datasimple)[1] <- "subject"
names(datasimple)[2] <- "tBodyAcc_mean_x"
names(datasimple)[3] <- "tBodyAcc_mean_y"
names(datasimple)[4] <- "tBodyAcc_mean_z"
names(datasimple)[5] <- "tBodyAcc_std_x"
names(datasimple)[6] <- "tBodyAcc_std_y"
names(datasimple)[7] <- "tBodyAcc_srd_z"
names(datasimple)[8] <- "tGravityAcc-mean-X"
names(datasimple)[9] <- "tGravityAcc-mean-y"
names(datasimple)[10] <- "tGravityAcc-mean-z"
names(datasimple)[11] <- "tGravityAcc-std-x"
names(datasimple)[12] <- "tGravityAcc-std-y"
names(datasimple)[13] <- "tGravityAcc-std-z"
names(datasimple)[14] <- "tBodyAccJerk-mean-X"
names(datasimple)[15] <- "tBodyAccJerk-mean-y"
names(datasimple)[16] <- "tBodyAccJerk-mean-z"
names(datasimple)[17] <- "tBodyAccJerk-std-x"
names(datasimple)[18] <- "tBodyAccJerk-std-y"
names(datasimple)[19] <- "tBodyAccJerk-std-z"
names(datasimple)[20] <- "tBodyGyro-mean_x"
names(datasimple)[21] <- "tBodyGyro-mean_y"
names(datasimple)[22] <- "tBodyGyro-mean_z"
names(datasimple)[23] <- "tBodyGyro-std_x"
names(datasimple)[24] <- "tBodyGyro-std_y"
names(datasimple)[25] <- "tBodyGyro-std_z"
names(datasimple)[26] <- "tBodyGyroJerk-mean_x"
names(datasimple)[27] <- "tBodyGyroJerk-mean_y"
names(datasimple)[28] <- "tBodyGyroJerk-mean_z"
names(datasimple)[29] <- "tBodyGyroJerk-std_x"
names(datasimple)[30] <- "tBodyGyroJerk-std_y"
names(datasimple)[31] <- "tBodyGyroJerk-std_z"
names(datasimple)[32] <- "tBodyAccMag-mean"
names(datasimple)[33] <- "tBodyAccMag-std"
names(datasimple)[34] <- "tGravityAccMag-mean"
names(datasimple)[35] <- "tGravityAccMag-std"
names(datasimple)[36] <- "tBodyAccJerkMag-mean"
names(datasimple)[37] <- "tBodyAccJerkMag-std"
names(datasimple)[38] <- "tBodyGyroMag-mean"
names(datasimple)[39] <- "tBodyGyroMag-std"
names(datasimple)[40] <- "tBodyGyroJerkMag-mean"
names(datasimple)[41] <- "tBodyGyroJerkMag-std"
names(datasimple)[42] <- "fBodyAcc-mean_x"
names(datasimple)[43] <- "fBodyAcc-mean_y"
names(datasimple)[44] <- "fBodyAcc-mean_z"
names(datasimple)[45] <- "fBodyAcc-std_x"
names(datasimple)[46] <- "fBodyAcc-std_y"
names(datasimple)[47] <- "fBodyAcc-std_z"
names(datasimple)[48] <- "fBodyAccJerk-mean_x"
names(datasimple)[49] <- "fBodyAccJerk-mean_y"
names(datasimple)[50] <- "fBodyAccJerk-mean_z"
names(datasimple)[51] <- "fBodyAccJerk-std_x"
names(datasimple)[52] <- "fBodyAccJerk-std_y"
names(datasimple)[53] <- "fBodyAccJerk-std_z"
names(datasimple)[54] <- "fBodyGyro-mean_x"
names(datasimple)[55] <- "fBodyGyro-mean_y"
names(datasimple)[56] <- "fBodyGyro-mean_z"
names(datasimple)[57] <- "fBodyGyro-std_x"
names(datasimple)[58] <- "fBodyGyro-std_y"
names(datasimple)[59] <- "fBodyGyro-std_z"
names(datasimple)[60] <- "fBodyAccMag-mean"
names(datasimple)[61] <- "fBodyAccMag-std"
names(datasimple)[62] <- "fBodyBodyAccJerkMag-mean"
names(datasimple)[63] <- "fBodyBodyAccJerkMag-std"
names(datasimple)[64] <- "fBodyBodyGyroMag-mean"
names(datasimple)[65] <- "fBodyBodyGyroMag-std"
names(datasimple)[66] <- "fBodyBodyGyroJerkMag-mean"
names(datasimple)[67] <- "fBodyBodyGyroJerkMag-std"

## grouping by subject and sctivity

grouped<-group_by(datasimple,subject,activity)
## finding the means of the other columns

mean_table <- summarise_each(grouped, c("mean"))

## writing out the file
write.table(mean_table,"tidydata.txt", row.names = FALSE)



