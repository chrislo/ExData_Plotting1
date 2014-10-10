source('load_data.R')

plot(data$DateTime, data$Global_active_power,
     ylab = "Global Active Power (kilowatts)",
     xlab = "",
     type = "l"
     )

dev.copy(png, 'plot2.png')
dev.off()
