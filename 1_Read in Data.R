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
