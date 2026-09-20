library(lattice)
dev.off
data(airquality)
head(airquality)
str(airquality)
summary(airquality)

# Histogram wind density
histogram(airquality$Wind, data = airquality,
          type = "density",
          col = "#00479E",
          main = "Histogram Wind",
          xlab = "Wind (mph)")

# Density plot 
densityplot(airquality$Wind, data = airquality,
            col = "#942121", lwd = 2,
            main = "Density Plot Wind",
            xlab = "Wind (mph)")

#histogram dan density
histogram(airquality$Wind, data = airquality,
          type = "density",
          col = "#316076",
          main = "Histogram dan Density Wind",
          xlab = "Wind (mph)",
          panel = function(x, ...) {
            panel.histogram(x, ...)
            panel.densityplot(x, col = "#942121", lwd = 2, plot.points = FALSE)
          })
#boxplot
boxplot(airquality$Wind,
        horizontal = TRUE,
        col = "yellow",
        main = "Boxplot Wind",
        xlab = "Wind")

#stem and leaf
stem(airquality$Ozone)
stem(airquality$Solar.R)
stem(airquality$Wind)
stem(airquality$Temp)

#scatter plot
plot(airquality$Wind,
     airquality$Ozone,
     main = "Scatter Plot Wind terhadap Ozone",
     xlab = "Wind (mph)",
     ylab = "Ozone",
     pch = 16)
rug(airquality$Wind)             
rug(airquality$Ozone, side = 2)
abline(0, 1, col = "red", lwd = 2)






