source("prep.R")

png("plot2.png", width = 480, height = 480)

plot(
  as.POSIXct(paste(data$Date,data$Time)),
  data$Global_active_power,
  type= "l",
  lwd=1,
  ylab= "Global Active Power (kilowatts)",
  xlab="")

dev.off()
