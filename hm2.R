# mtcars
head(mtcars)
mtcars[c('qsec')]
library(ggplot2)

# Загрузка датасета mtcars
data(mtcars)

# plot hist
hist(mtcars$qsec, border="green", col = "steelblue", main="Заголовок Гистограммы", sub="Подзаголовок",
     xlab = "Ускорение", ylab = "Частота", cex.lab = 2,cex.axis = 2)

# Compute the density data
dens <- density(mtcars$qsec)
# plot density
plot(dens,
     frame = FALSE,
     col = "steelblue",
     main = "Density plot of qsec")
polygon(dens, col = "steelblue")




