data <- read.csv("household_power_consumption.txt", sep = ";", header =TRUE, na.strings="?", stringsAsFactors=T)

sub_data <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

sub_data <- mutate(sub_data, Date_Time = paste(Date, Time, sep = " "))

plot_data <- strptime(sub_data$Date_Time, format = "%d/%m/%Y %H:%M:%S" )

png("plot2.png", width = 480, height = 480)


plot(plot_data,sub_data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()