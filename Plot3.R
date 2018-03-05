## This first line will likely take a few seconds. Be patient!
NEI <- readRDS("summarySCC_PM25.rds")

SCC <- readRDS("Source_Classification_Code.rds")

#Question 3

library('ggplot2')

emission_type_balt <- aggregate(Emissions ~ year + type, baltimore_sub, sum)

png("plot3.png", width = 640, height = 640)
plot3 <- ggplot(emission_type_balt, aes(year, Emissions, color = type)) + geom_line() +
  xlab("year") +
  ylab(expression(" Emissions"))

print(plot3)
dev.off()