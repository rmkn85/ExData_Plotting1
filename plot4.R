source("prep.R")

png("plot4.png", width = 480, height = 480)

# plot in 2x2 grid
par(mfcol=c(2,2))

#1
plot(
  data$DateTime,
  data$Global_active_power,
  type="l",
  lwd=1,
  ylab="Global Active Power",
  xlab="")

#2
plot(
  data$DateTime,
  sub$Sub_metering_1,
  type="l",
  ylab="Energy sub metering",
  xlab="")

lines(
  data$DateTime,
  data$Sub_metering_2,
  type="l",
  col="red")

lines(
  data$DateTime,
  data$Sub_metering_3,
  type="l",
  col="blue")

legend(
  "topright",
  c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
  lty=1,
  bty="n",
  col=c("black", "red", "blue"))

#3
plot(
  data$DateTime,
  data$Voltage,
  type="l",
  xlab="datetime",
  ylab="Voltage")

#4
plot(
  data$DateTime,
  data$Global_reactive_power,
  type="l",
  xlab="datetime",
  ylab="Global_reactive_power")

dev.off()
