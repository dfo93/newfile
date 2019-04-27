#Select New CSV File using file selector
NewFile <- read.table(file.choose(),header=T,sep=",")

#Print first few rows of each column to understand the contents
for(i in names(NewFile)){

    print(paste(head(NewFile[[i]])))}

#Print Summary of the file
summary(NewFile)

#grapheverything

library(ggplot2)
n <- 1

while(n < ncol(NewFile)){
  m <- 1
  while(m < ncol(NewFile)){
    ggplot(NewFile,x = NewFile[n],y = NewFile[m])
    m+1
  }
n+1
  }
