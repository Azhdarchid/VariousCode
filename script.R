##Load Libraries

library(bigmemory)
library(psych)
library(pastecs)

##Read to CSV, clean and prepare

allstates <- read.csv("stateestimates2.csv")
missouri <- subset(allstates, GeographicArea == ".Missouri")
missouri <- select(missouri, GeographicArea, X2010, X2011, X2012,
                   X2013, X2014, X2015, X2016, 
                   X2017)

missouri <- melt(missouri, id.vars = "GeographicArea")
missouri$variable <- gsub("[^0-9]", "", missouri$variable)
missouri$variable <- as.numeric(missouri$variable)

##Generate linear model and plot it
missourilm <- lm(missouri$value ~ missouri$variable)
with(missouri, plot(variable, value))
abline(missourilm)

##Generate predictions for 2020 with linear model
newdata <- data.frame(variable = c(2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021))
missouriprediction <- predict(missourilm, newdata)
names(missouriprediction) <- c(2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021)
missouriprediction <- data.frame(year = names(missouriprediction), pop = unname(missouriprediction))
rownames(missouriprediction) <- NULL

##Plot predictions
matplot(missouriprediction$year, missouriprediction$pop, type = "l")

##Generate histogram for most recent year's data set
missouripopulation = as.vector(rep(missouri$variable, missouri$value))
hist(missouripopulation, ylim = c(5888000,6288000), ylab = "Est. Population", xlab = "Year")


##Statistical description of predictions
describe(missouriprediction$pop)
stat.desc(missouriprediction$pop)

