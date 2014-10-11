source('load_data.R')
png('plot2.png')

plot(data$DateTime, data$Global_active_power,
     ylab = "Global Active Power (kilowatts)",
     xlab = "",
     type = "l"
     )

dev.off()
