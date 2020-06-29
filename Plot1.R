# Course porject - I of Data Science course "Exploratory Data Analysis" offered by Coursera. 
# Abdul Baseer Buriro
setwd("./DataScience/Exploratory Data Analysis/")
library(data.table)
library(dplyr)
library(lubridate)
# reading data from 1-2-2007 (corresponding to line number 66638) to 2-2-2007
r <- 69517-66638                            
data <- read.table("household_power_consumption.txt", header = F, sep = ";",
                   skip = 66637, nrows = r)
png("plot1.png", width = 480, height = 480)
hist(data$V3,col = 'red', xlab = "Global Active Power (Killowatts)",
     xlim = c(0,6), ylim = c(0,1200), main =  "")
dev.off()
