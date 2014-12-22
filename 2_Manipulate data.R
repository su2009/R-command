# summarize/check existing objective
summary(data)
str(data)  # check the structure of the objective
names(data)
dim(data) #dimension of an objective
class(data)  # class of an object (numeric, matrix, data frame, etc)
length(data)  # the number of the records

head(data,n=3) # default n is 6
tail(data,n=3) # default n is 6

typeof(data$v1)  # type of a variable
levels(data$v1) # list levels of certain variable
table(data$v1)


# deal with missing value & NA value

1. is.na(x) # returns TRUE of x if it is missing
   y <- c(1,2,3,NA)  #NA has to be capital here
   is.na(y) # returns a vector (F F F T)
2. na.rm=TRUE # is always used as parameter in function
3. # create new dataset without missing data 
  newdata <- na.omit(data)
  
# sorting dataset

sort(data$var1)   # only return the sorted result of var1; increasing is the default setting
data[order(data$var1,data$var2),]   # return the whole matric
data[order(data$var1,-data$var2),]   # return the whole matric, sort var1 by increasing and then var2 by decreasing

library(plyr)  # sorting package
arrange(data,desc(var2))

# add new row/column to an exsiting objective

data$newcolumn<-c(1,2,3,4)   # add new column/variable
data[7,] <- c(7,8,9,10) # use keyboard put int to add new row
newdata<-rbind(data,newrow)  #use rbind to add new rows 

#eg: add new rows in the middle of a matric
1. existingDF <- as.data.frame(matrix(seq(20),nrow=5,ncol=4))
   r <- 3
   newrow <- seq(4)
   newDF = rbind(existingDF[(1:2),],newrow,existingDF[(3:5),])
2. existingDF <- as.data.frame(matrix(seq(20),nrow=5,ncol=4))
   r <- 3
   newrow <- seq(4)
   insertRow <- function(existingDF, newrow, r) {
   existingDF[seq(r+1,nrow(existingDF)+1),] <- existingDF[seq(r,nrow(existingDF)),]
   existingDF[r,] <- newrow
   existingDF
   }
   insertRow(existingDF, newrow, r)  # much faster when dealing with large dataset, http://stackoverflow.com/questions/11561856/add-new-row-to-dataframe


# subset certain parts of an existing objective
age <- c(25, 34, 28, 52)  p1<-age[-2]   p1   # result: [1] 25 28 52
data[-1,-2]  #remove the first row and the second column of the matric data

x[(x$var1>3&x$var3<14),]   # select rows statisfy certain criteria
x[which(x$var1>3&x$var3<14),] # same as above

x[,c(2:4)] # keep certain variables/columns 2,3,4
x[,c("var1","var3","var4"),]  # keep certain variables (var1,3,and 4)

newdata<-subset(data,var1>1|var3<3, select=c(var1,var2,var4)) # subset certain part of the dataset, and keep certain variables (1,2,and4)


# combine two objective

c<-(data1,data2) # combines objects into a vector.  eg: patientID <- c(1, 2, 3, 4)   age <- c(25, 34, 28, 52)   c<-(patientID,age)
cbind(object, object, ...)  # combine objects as columns
rbind(object, object, ...)  # combine objects as rows
merge(object1, object2, by.x="var1", by.y="var2")

# identify variables or records matching certain criteria 
which(leadership$gender=="F"&leadership$country=="UK")  # return the index of the record matching the cretiria
