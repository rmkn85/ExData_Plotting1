# read all data, with number of rows known in advance
#rawdata <- read.csv("../household_power_consumption.txt",header=TRUE, sep=";", dec=".", nrows=2075259, na.strings=c("?"), colClasses=c("character", "character", rep("numeric", 7)))

# convert string to date column, by given format
rawdata$Date = as.Date(rawdata$Date, format="%d/%m/%Y")

# subset data to given date range
start_date = as.Date("2007-02-01", format="%Y-%m-%d")
end_date = as.Date("2007-02-02", format="%Y-%m-%d")
data = subset(rawdata, rawdata$Date>=start_date & rawdata$Date<=end_date)

# combine date and time
data$DateTime <- as.POSIXct(paste(data$Date,data$Time))
