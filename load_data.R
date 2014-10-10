if(!file.exists('data.zip')) {
    url <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
    download.file(url, './data.zip', method = "curl")
}

data <- read.table(
    file = unz('./data.zip', 'household_power_consumption.txt'),
    header = FALSE,
    sep = ';',
    na.strings = '?',
    skip = 66637,
    nrows = 2880,
    col.names = c(
        'Date',
        'Time',
        'Global_active_power',
        'Global_reactive_power',
        'Voltage',
        'Global_intensity',
        'Sub_metering_1',
        'Sub_metering_2',
        'Sub_metering_3'
        )
    )

data$DateTime <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")
