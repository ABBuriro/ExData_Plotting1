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
names(data) <-c("Date","Time","Global_active_power", "Global_reactive_power",
                "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2",
                "Sub_metering_3")
data$Date <- dmy(data$Date)
L <- dim(data)
L <- L[1]
xtick <-seq(0,L,by = L/2)
png("plot2.png", width = 480, height = 480)
plot(1:L,as.numeric(data$Global_active_power), xaxt = "n",
     type = "l", 
     xlab = "", ylab = "Global Active Power (Killowatts)",
     main =  "")
text(x = xtick, par("usr")[3], labels = c("THU","FRI","SAT"), pos = 1, xpd = TRUE)
dev.off()
