# summarize/check existing objective
summary(data)
str(data)  # check the structure of the objective
names(data)
dim(data) #dimension of an objective
class(object)  # class of an object (numeric, matrix, data frame, etc)

typeof(data$v1)  # type of a variable
levels(data$v1) # list levels of certain variable

table(data)
head(data,n=3) # default n is 6
tail(data,n=3) # default n is 6


# deal with missing value & NA value

1. is.na(x) # returns TRUE of x if it is missing
   y <- c(1,2,3,NA)  #NA has to be capital here
   is.na(y) # returns a vector (F F F T)

2. na.rm=TRUE # is always used as parameter in function

3. # create new dataset without missing data 
  newdata <- na.omit(mydata)
  
# sorting dataset


# add new row/column to an exsiting objective


# subset certain parts of an existing objective


# merge two objective


# identify variables or records matching certain criteria 

