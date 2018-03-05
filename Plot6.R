## This first line will likely take a few seconds. Be patient!
NEI <- readRDS("summarySCC_PM25.rds")

SCC <- readRDS("Source_Classification_Code.rds")

#Question 6
Emission_Balt_LA_onroad <- NEI[(NEI$fips=="24510"|NEI$fips=="06037") & NEI$type=="ON-ROAD",  ]


plot(aggregate(Emissions ~ year,Emission_Balt_LA_onroad[(Emission_Balt_LA_onroad$fips == "24510"), ], sum), ylim=c(0,4600), main = "Emissions from motor vehicle sources ", type = 'l', col = "blue")
points(aggregate(Emissions ~ year,Emission_Balt_LA_onroad[(Emission_Balt_LA_onroad$fips == "06037"), ], sum), type='l', col = "red")
legend("right", c("Baltimore City", "Los Angeles County"),
       col=c("blue", "red"), lty= 1, cex=0.8)
dev.copy(png, file="plot6.png", width = 640, height = 640)
dev.off()
