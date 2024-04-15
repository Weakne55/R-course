# mtcars
head(mtcars)
mtcars[c('qsec')]
mtcars[c('mpg')]
class(mtcars$mpg)

outer = FALSE

line = -2
cex = 2
adj  = 0.025

par(mfrow = c(2, 2))

# plot hist
hist(mtcars$qsec, border="green", col = "steelblue", main="Заголовок Гистограммы", sub="Подзаголовок",
     xlab = "Ускорение", ylab = "Частота", cex.lab = 2,cex.axis = 2)
title(outer=outer,adj=adj,main="A",cex.main=cex,col="black",font=2,line=line)

# plot density
dens <- density(mtcars$qsec)

plot(dens,
     frame = FALSE,
     col = "steelblue",
     main = "Density plot of qsec")
title(outer=outer,adj=adj,main="B",cex.main=cex,col="black",font=2,line=line)
polygon(dens, col = "steelblue")

# scatter plot
plot(mtcars$disp, mtcars$mpg, pch = mtcars$cyl, cex = 2, col = mtcars$cyl, ylab="mpg",xlab="disp")
title(outer=outer,adj=adj,main="C",cex.main=cex,col="black",font=2,line=line)

# boxplot
boxplot(mpg ~ cyl, data = mtcars,las=2)
stripchart(mtcars$mpg ~ mtcars$cyl, vertical = TRUE, method = "jitter",
           pch = 19, add = TRUE, col = 1:length(levels(chickwts$feed)))
title(outer=outer,adj=adj,main="D",cex.main=cex,col="black",font=2,line=line)



