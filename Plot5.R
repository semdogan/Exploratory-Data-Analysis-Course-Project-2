## This first line will likely take a few seconds. Be patient!
NEI <- readRDS("summarySCC_PM25.rds")

SCC <- readRDS("Source_Classification_Code.rds")

#Question 5

baltimore_sub_onroad <- NEI[NEI$fips == "24510" & NEI$type == "ON-ROAD" , ]
plot(aggregate(Emissions ~ year, baltimore_sub_onroad, sum), type = 'o')
dev.copy(png, file="plot5.png", width = 640, height = 640)
dev.off()