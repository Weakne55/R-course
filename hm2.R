# mtcars
head(mtcars)
mtcars[c('qsec')]
mtcars[c('mpg')]
class(mtcars$mpg)

# plot hist
hist(mtcars$qsec, border="green", col = "steelblue", main="Заголовок Гистограммы", sub="Подзаголовок",
     xlab = "Ускорение", ylab = "Частота", cex.lab = 2,cex.axis = 2)

# plot density
dens <- density(mtcars$qsec)

plot(dens,
     frame = FALSE,
     col = "steelblue",
     main = "Density plot of qsec")
polygon(dens, col = "steelblue")

# scatter plot
plot(mtcars$disp, mtcars$mpg, pch = mtcars$cyl, cex = 2, col = mtcars$cyl, ylab="mpg",xlab="disp")

# boxplot
boxplot(mpg ~ cyl, data = mtcars,las=2)
stripchart(mtcars$mpg ~ mtcars$cyl, vertical = TRUE, method = "jitter",
           pch = 19, add = TRUE, col = 1:length(levels(chickwts$feed)))




