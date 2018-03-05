## This first line will likely take a few seconds. Be patient!
NEI <- readRDS("summarySCC_PM25.rds")

SCC <- readRDS("Source_Classification_Code.rds")

#Question 4

NEISCC <- merge(NEI, SCC, by = "SCC")
NEISCCsub <- NEISCC[grepl("Coal",NEISCC$EI.Sector), ]
plot(aggregate(Emissions ~ year, NEISCCsub, sum), type = 'o')
dev.copy(png, file="plot4.png", width = 640, height = 640)
dev.off()