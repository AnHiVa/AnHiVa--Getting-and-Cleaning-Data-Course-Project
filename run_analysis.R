#Load the tidyverse library
library(tidyverse)


#Read training labels and data 
y_train <- read_table("./UCI HAR Dataset/train/y_train.txt",col_names = FALSE)
x_train <- read_table("./UCI HAR Dataset/train/X_train.txt", col_names = FALSE)

        y_train <- rename(y_train, activity = X1)

#Read features data, so we can get a number vector to define which columns 
#we need to subset
features <- read_table("./UCI HAR Dataset/features.txt", col_names = FALSE)

        columns_means <- grep("-mean\\(\\)",features$X1)
        columns_std <- grep("-std\\(\\)", features$X1)
        columns_wished <- c(columns_means, columns_std)
 
#Get the name of every variable       
        mean_strings <- grep("-mean\\(\\)", features$X1, value = TRUE)
        mean_split <- strsplit(mean_strings, " ")
        
        std_strings <- grep("-std\\(\\)", features$X1, value = TRUE)
        std_split <- strsplit(std_strings, " ")

#Get variable labels in a vector
        firstElement <- function(x){x[1]}
                mean_variable.labels <- sapply(mean_split, firstElement)
                std_variable.labels <- sapply(std_split, firstElement)
                all_variable.labels <- c(mean_variable.labels,std_variable.labels)

#Get variable names in a vector       
        secondElement <- function(x){x[2]}
                mean_variable.names <- sapply(mean_split, secondElement)
                std_variable.names <- sapply(std_split, secondElement)
                all_variable.names <- c(mean_variable.names,std_variable.names)
        
                
#Subset columns for training data
x_train <- x_train[,columns_wished]

#Set column names 
x_train <- x_train %>% rename_at(vars(grep("X",names(.))), ~all_variable.names)

#Read training subject data
subject_train <- read_table("./UCI HAR Dataset/train/subject_train.txt", col_names = FALSE)

        subject_train <- rename(subject_train, subject = X1)

#Bind the training data into one column
Data_train_NoSubject <- cbind(y_train,x_train)


#Tidy test data
y_test <- read_table("./UCI HAR Dataset/test/y_test.txt",col_names = FALSE)
x_test <- read_table("./UCI HAR Dataset/test/X_test.txt", col_names = FALSE)
        
        y_test <- rename(y_test, activity = X1)
        
#Subset columns for testing data    
x_test <- x_test[,columns_wished]

#Set column names
x_test <- x_test %>% rename_at(vars(grep("X",names(.))), ~all_variable.names)

#Read testing subject data
subject_test <- read_table("./UCI HAR Dataset/test/subject_test.txt", col_names = FALSE)

subject_test <- rename(subject_test, subject = X1)

#Bind the testing data into one column
Data_test_NoSubject <- cbind(y_test,x_test)

#Train and test data
Data_train_test_NoSubject <- rbind(Data_train_NoSubject, Data_test_NoSubject)

#Subject data
all_subjects <- rbind(subject_train, subject_test)

#Final merged data
Data_Completed <- cbind(all_subjects,Data_train_test_NoSubject)


#labeling and factoring activities
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
activity_labels[,2] <- as.character(activity_labels[,2])

Data_Completed$subject <- as.factor(Data_Completed$subject)
Data_Completed$activity <- factor(Data_Completed$activity, levels = activity_labels[,1], labels = activity_labels[,2])

Data_Completed <- as_tibble(Data_Completed)

#Set descriptive variable names
names(Data_Completed) <- gsub("Acc", "Accelerometer", names(Data_Completed))
names(Data_Completed) <- gsub("Gyro", "Gyroscope", names(Data_Completed))
names(Data_Completed) <- gsub("BodyBody", "Body", names(Data_Completed))
names(Data_Completed) <- gsub("Mag", "Magnitude", names(Data_Completed))
names(Data_Completed) <- gsub("^t", "Time", names(Data_Completed))
names(Data_Completed) <- gsub("^f", "Frequency", names(Data_Completed))
names(Data_Completed) <- gsub("-mean()", "Mean", names(Data_Completed))
names(Data_Completed) <- gsub("-std()", "STD", names(Data_Completed))
names(Data_Completed) <- gsub("-freq()", "Frequency", names(Data_Completed))


#Creates a summarized data set with the average of each variable for each activity and subject
Summarized_Data <- Data_Completed %>%
                    group_by(subject,activity) %>%
                    summarize_all(list(mean))

#Cleans workspace leaving only the Tidy Data sets
rm(list = setdiff(ls(),c("Data_Completed", "Summarized_Data")))

#create Tidy data sets for Summarized Data
write_csv(Summarized_Data, "TIDY_HumanActivity.csv")
write.table(Summarized_Data, "TIDY_HumanActivity.txt", quote = FALSE, row.names = FALSE)
