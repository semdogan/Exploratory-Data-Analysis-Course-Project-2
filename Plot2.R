## This first line will likely take a few seconds. Be patient!
NEI <- readRDS("summarySCC_PM25.rds")

SCC <- readRDS("Source_Classification_Code.rds")

#Question 2

baltimore_sub <- NEI[NEI$fips == 24510, ]
plot(aggregate(Emissions ~ year, baltimore_sub, sum), type = 'o')

dev.copy(png, file="plot2.png", width = 640, height = 640)
dev.off()