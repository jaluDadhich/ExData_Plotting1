> householdFile <- "E:/household_power_consumption.txt"
> head(householdFile)
> plotData <- read.table(householdFile, header=T, sep=";", na.strings="?")
> head(plotData)
> finalData <- plotData[plotData$Date %in% c("1/2/2007","2/2/2007"),]
> SetTime <-strptime(paste(finalData$Date, finalData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
> finalData <- cbind(SetTime, finalData)
> 
> hist(finalData$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
