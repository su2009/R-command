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
  newdata <- na.omit(mydata)
  
# sorting dataset


# add new row/column to an exsiting objective

# remove certain parts of an existing objective
age <- c(25, 34, 28, 52)  p1<-age[-2]   p1   # result: [1] 25 28 52
data[-1,-2]  #remove the first row and the second column of the matric data

# subset certain parts of an existing objective


# combine two objective

c<-(data1,data2) # combines objects into a vector.  eg: patientID <- c(1, 2, 3, 4)   age <- c(25, 34, 28, 52)   c<-(patientID,age)
cbind(object, object, ...)  # combine objects as columns
rbind(object, object, ...)  # combine objects as rows


# identify variables or records matching certain criteria 

