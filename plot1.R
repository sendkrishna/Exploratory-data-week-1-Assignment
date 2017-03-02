data <- read.csv("household_power_consumption.txt", sep = ";", header =TRUE, na.strings="?", stringsAsFactors=T)

sub_data <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

png("plot1.png", width = 480, height = 480)

hist(sub_data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", ylab = "" ,main = "Global Active Power")

dev.off()

getwd()