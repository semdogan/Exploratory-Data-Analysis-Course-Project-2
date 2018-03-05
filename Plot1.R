## This first line will likely take a few seconds. Be patient!
NEI <- readRDS("summarySCC_PM25.rds")

SCC <- readRDS("Source_Classification_Code.rds")

#Question 1

total_emission_year <- aggregate(Emissions ~ year, NEI, sum)

plot(total_emission_year$year, total_emission_year$Emissions, xlab = "Year", ylab = "Emissions",type = 'o')
dev.copy(png, file="plot1.png", width = 640, height = 640)
dev.off()
