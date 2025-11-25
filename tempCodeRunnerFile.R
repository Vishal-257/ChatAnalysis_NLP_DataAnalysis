library(tidyr)
library(DescTools)
install.packages('DescTools')
df<-read.csv("C:\\Users\\HP\\Downloads\\WhatsApp Chat with 2021 BTech Demand for summer semester\\WhatsApp.csv")
View(df)
colSums(is.na(df))
df<-na.omit(df)
head(df, n=10)
str(df)
for(col in colnames(df)){
  x <- length(unique(df[[col]]))
  cat(col,":",x,"\n")
}
mode <- Mode(df$Number)
mode
Datemode <- Mode(df$Date)
Datemode

contact_counts <- table(df$Number)
View(contact_counts)
# Create the bar plot
barplot(contact_counts, 
        main = "Frequency of Contacts", 
        xlab = "Contacts", 
        ylab = "Frequency", 
        col = "skyblue")

date_counts <- table(df$Date)
View(date_counts)
# Create the bar plot
barplot(date_counts, 
        main = "Frequency of date", 
        xlab = "dates", 
        ylab = "Frequency", 
        col = "skyblue")
        