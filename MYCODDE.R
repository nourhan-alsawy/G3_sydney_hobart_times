df<-read.csv("G3_sydney_hobart_times.csv")
df
str(df)
summary(df)
df$Time<-gsub(' day','',df$Time)
df$Code.Time.less.than.3<-NULL
df
df$Year<-as.factor(df$Year)
any(is.na(df))
complete.cases(df)
df<-df[!is.na(df$Time),]
rownames(df)<-NULL
library(tidyverse)
library(ggplot2)
WW<-ggplot(df,aes(x=fleet_start,y=fleet_finish))
WW+geom_point()
draw_hist<-ggplot(df,aes(fleet_finish))
draw_hist+geom_histogram(color='red',fill='blue',alpha=0.5)
write.csv(df,file ="mydata.csv",row.names =FALSE)
write.csv(df,file ="Mydata.csv",row.names =FALSE )
