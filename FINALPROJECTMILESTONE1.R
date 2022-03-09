#new dataset
print("Final Project Milestone 1")

#import wine dataset
WINE<-read.csv("C:\\Users\\AJOY\\Downloads\\winequalityN.csv")

#mean,median,sd,min,max
psych::describe(wine)

#barplot for wine density
wine_density <- table(WINE$density)
barplot(wine_density, main = "Wine density value", xlab = "Density", col = "black", cex.names=0.5,las=2)

#scatter plot for Quality vs alcohol
plot(x = WINE$alcohol, y = WINE$quality,
     xlab = "Alcohol",
     ylab = "Quality",
     main = "Quality vs Alcohol")

#box plot for wine
boxplot(alcohol~density,data=WINE, main="ALCOHOL VS DENSITY BOX PLOT",
        xlab="Density")
__________________________________________________________________________
#created subset 1
NEWWINE<-subset(WINE, free.sulfur.dioxide == 25)
NEWWINE

#scatter plot for sulphur =25
plot(x = NEWWINE$alcohol, y = NEWWINE$quality,
     xlab = "Alcohol",
     ylab = "Quality", 
     main = "Quality vs Alcohol where SULPHUR DIOXIDE=25")

#boxplot for when sulphur =25
boxplot(alcohol~density,data=NEWWINE, main="ALCOHOL VS DENSITY where SULPHUR DIOXIDE = 25",
        xlab="Density")


#bar plot for when sulphur=25
wine_density <- table(NEWWINE$density)
barplot(wine_density, main = "Wine density value", xlab = "Density", col = "cyan", cex.names=0.5,las=2)

#create subset 2
WINECITRIC<-subset(WINE, citric.acid == 0.32)
WINECITRIC

#scatter plot for citric=0.32
plot(x = WINECITRIC$alcohol, y = WINECITRIC$quality,
     xlab = "Alcohol",
     ylab = "Quality", 
     main = "Quality vs Alcohol where CITRIC ACID =0.32")

#boxplot for when citric=0.32
boxplot(alcohol~density,data=WINECITRIC, main="ALCOHOL VS DENSITY where CITRIC ACID =0.32",
        xlab="Density")


#bar plot for when citric=0.32
wine_density <- table(WINECITRIC$density)
barplot(wine_density, main = "Wine density value", xlab = "Density", col = "yellow", cex.names=0.5,las=2)