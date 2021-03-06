source('load_data.R')
png('plot3.png')

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
       lty=1)

dev.off()
