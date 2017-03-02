data <- read.csv("household_power_consumption.txt", sep = ";", header =TRUE, na.strings="?", stringsAsFactors=T)

sub_data <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

sub_data <- mutate(sub_data, Date_Time = paste(Date, Time, sep = " "))

plot_data <- strptime(sub_data$Date_Time, format = "%d/%m/%Y %H:%M:%S" )

png("plot3.png", width = 480, height = 480)


plot(plot_data,sub_data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")

lines(plot_data,sub_data$Sub_metering_2, col = "red")

lines(plot_data,sub_data$Sub_metering_3, col = "blue")

legend("topright", lty = 1, col = c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3") )


dev.off()