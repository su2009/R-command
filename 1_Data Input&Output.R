# check working directory

1. getwd()
   setwd ("d:/Users/yangsu/Desktop")

2. check if the "data" directory exist, if not, create one:
      if(!file.exists("data")) {       
          dir.create("data")
       }

# download + read CSV

h1url<-"http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv "  # change "https" into "http" is necessary
download.file(h1url,destfile="comdata.csv")
comdata<-read.table("comdata.csv",header=TRUE,sep=",")   # sep="," is important#


# download + read EXCEL

library(xlsx)
h3url<-"http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
download.file(h3url,destfile="gasdata.xlsx",mode="wb")  # need to add mode="wb", otherwise the file will corrupted
gasdata<-read.xlsx("gasdata.xlsx",sheetIndex=1)
gasdata1<-read.xlsx("gasdata.xlsx",sheetIndex=1,rowIndex=18:23,colIndex=7:15)  # only read in part of the excel file


# keyboard input vector
a <- c(1, 2, 5, 3, 6, -2, 4)
b <- c("one", "two", "three", NA) # NA needs to be capital
c <- c(TRUE, TRUE, TRUE, FALSE, TRUE, FALSE)

# keyboard input matrics
1. y1 <- matrix(c(1,2,3,4,5,6), nrow=3, ncol=2, byrow=TRUE) # fill the matric row by row
   rownames(y1)<-c("r1","r2","r3")
   colnames(y1)<-c("v1","v2")
   y1

2. # same as above except fill the matric column by column
   y2 <-matrix(c(1,2,3,4,5,6), nrow=3, ncol=2,byrow=FALSE,dimnames = list(c("r1", "r2","r3"),c("v1", "v2"))) 
   y2

# keyboard input arrays (Arrays are similar to matrices but can have more than two dimensions)
dim1 <- c("A1", "A2")
dim2 <- c("B1", "B2", "B3")
dim3 <- c("C1", "C2", "C3", "C4")
z <- array(1:24, c(2, 3, 4), dimnames=list(dim1, dim2, dim3))

# keyboard input data frames (A data frame is more general than a matrix in that different columns can contain 
# different modes of data (numeric, character, etc.). It is the most commonly used data structure in R.
 patientID <- c(1, 2, 3, 4)
 age <- c(25, 34, 28, 52)
 diabetes <- c("Type1", "Type2", "Type1", "Type1")
 status <- c("Poor", "Improved", "Excellent", "Poor")
 patientdata <- data.frame(patientID, age, diabetes, status)


# export data  (csv is one of the most common file type)
write.table(patientdata, file = "pdata.csv", sep = ",", col.names = NA)  #  col.names = NA is needed to make sure the cell[1,1] is empty


