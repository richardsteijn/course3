basedir <- 'C:/R/Work/Course3/Week4/Eindopdracht/UCI HAR Dataset'
setwd(basedir)

#load feature info  
features.filename <- 'features.txt' ##'C:/R/Work/Course3/Week4/Eindopdracht/UCI HAR Dataset/features.txt'
features.data<-read.csv(features.filename, colClasses = "character", sep=' ', header = FALSE)

#load activity labels   
activity.filename <- 'activity_labels.txt'
activity.data<-read.csv(activity.filename, colClasses = "character", sep=' ', header = FALSE)
names(activity.data) <- c('Activityid','Activityname')

###########################################################
                  ###########################
                  ##combininggtraining data## 
                  ###########################
###########################################################

#load subject info
subject_train.filename <- './train/subject_train.txt'
subject_train.data<-read.csv(subject_train.filename, colClasses = "character",  header = FALSE) # , nrows = 10
names(subject_train.data) <- c('Subject')
 
#load measure info
X_train.filename <- './train/X_train.txt'
X_train.data<-read.csv(X_train.filename, colClasses = "numeric",  sep=' ', header = FALSE) #, nrows = 10
v <-as.vector(t(X_train.data))
v<-v[!is.na(v)]
m<-matrix(v,  ncol=561, byrow = TRUE) 

df_obs <-data.frame(m)
names(df_obs) <- gsub('\\()).*$', '', features.data$V2)  #set column names

 
#load activity info
y_train.filename <- './train/Y_train.txt'
y_train.data<-read.csv(y_train.filename, colClasses = "character", header = FALSE) #, nrows = 10
names(y_train.data) <- c('Activity')

#merge three dataframes to one
df_train <-data.frame(subject_train.data, y_train.data, df_obs)

###########################################################
                #######################
                ##combining test data## 
                #######################
###########################################################

##testdata 
#load subject info
subject_test.filename <- './test/subject_test.txt'
subject_test.data<-read.csv(subject_test.filename, colClasses = "character",  header = FALSE)  
names(subject_test.data) <- c('Subject')

 
#load measure info
X_test.filename <- './test/X_test.txt'
X_test.data<-read.csv(X_test.filename, colClasses = "numeric",  sep=' ', header = FALSE)  
v <-as.vector(t(X_test.data))
v<-v[!is.na(v)]
m<-matrix(v,  ncol=561, byrow = TRUE) 

df_obs <-data.frame(m)
names(df_obs) <- gsub('\\()).*$', '', features.data$V2) #set column names


#load activity info
y_test.filename <- './test/Y_test.txt'
y_test.data<-read.csv(y_test.filename, colClasses = "character", header = FALSE)  
names(y_test.data) <- c('Activity')

#merge three dataframes to one
df_test <-data.frame(subject_test.data, y_test.data, df_obs)

###########################################################
                ####################################
                ##combining test and training data## 
                ####################################
###########################################################
df_total <- rbind(df_train, df_test )

library(dplyr)

df_joined <- merge(df_total, activity.data, by.x='Activity', by.y='Activityid')   

selnames <- c('Subject', 'Activityname',  names(df_joined[grepl("mean", colnames(df_joined))]) , names(df_joined[grepl("std", colnames(df_joined))]))

df_selection <- df_joined[selnames]

 
df_summary <- df_selection %>% group_by(Activityname, Subject) %>% summarise_each(funs(mean))

write.table(df_summary, file = "./../work/Summarydata.txt", row.name=FALSE)
 