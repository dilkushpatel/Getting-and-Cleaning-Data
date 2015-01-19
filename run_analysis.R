test_data <- read.table("./test/x_test.txt")
train_data <- read.table("./train/x_train.txt")
y_test <- read.table("./test/y_test.txt")
y_train <- read.table("./train/y_train.txt")
subject_test <- read.table("./test/subject_test.txt")
subject_train <- read.table("./train/subject_train.txt")
test_tmp <- cbind(test_data,subject_test)
test <- cbind(y_test,test_tmp)
train_tmp <- cbind(train_data,subject_train)
train <- cbind(y_train,train_tmp)
data <-rbind(test,train)
data<-merge(data,activity_labels,by.x=1,by.y=1)
data <- data[,-1]
colnames(data) <- features$Feature_Name
colnames(data)[563] <- "level"
colnames(data)[562] <- "subject"
data<-data[,c(grep("subject",colnames(data)),grep("level",colnames(data)),grep("mean",colnames(data)),grep("std",colnames(data)))]
agg<-aggregate(data[,3:length(data)],by=list(data$subject,data$level),FUN=mean)
colnames(agg)<-gsub("\\(\\)","",colnames(agg))
colnames(agg)<-gsub("std","standard deviation",colnames(agg))
write.table(agg,"tidy_data.txt")