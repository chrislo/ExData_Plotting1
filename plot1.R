source('load_data.R')

hist(data$Global_active_power,
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency"
     )

dev.copy(png, 'plot1.png')
dev.off()
