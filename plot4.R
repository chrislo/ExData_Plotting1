source('load_data.R')
png('plot4.png')

par(mfrow=c(2,2))

## Plot 1

plot(data$DateTime, data$Global_active_power,
     ylab = "Global Active Power",
     xlab = "",
     type = "l"
     )

## Plot 2

plot(data$DateTime, data$Voltage,
     ylab = "Voltage",
     xlab = "datetime",
     type = "l"
     )

## Plot 3

plot(data$DateTime, data$Sub_metering_1,
     ylab = "Energy sub metering",
     xlab = "",
     type = "l"
     )

lines(data$DateTime, data$Sub_metering_2, type = "l", col = "red")
lines(data$DateTime, data$Sub_metering_3, type = "l", col = "blue")

legend("topright",
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col = c("black", "red", "blue"),
       lty=1,
       bty="n")

## Plot 4

plot(data$DateTime, data$Global_reactive_power,
     ylab = "Global_reactive_power",
     xlab = "datetime",
     type = "l"
     )

dev.off()
