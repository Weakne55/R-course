library(ggplot2)
#install.packages("ggpubr")
library(ggpubr)


# plot hist

p1<-ggplot(mtcars, aes(x=qsec)) + geom_histogram(color = "green", fill = "steelblue", bins = 8) + 
  labs(x = "Ускорение", y = "Частота") + ggtitle("Заголовок") + theme(axis.text.x = element_text(size = 20),
                                                                      axis.text.y = element_text(size = 20),
                                                                      axis.title.x = element_text(size = 20),
                                                                      axis.title.y = element_text(size = 20))
p1
# plot density

p2<-ggplot(mtcars, aes(x=qsec))+
  geom_density(color="darkblue", fill="lightblue")+ggtitle("Density plot of qsec")

p2
# scatter plot

p3<-ggplot(mtcars, aes(x=mpg, y=disp, colour=cyl, shape=as.factor(cyl))) +
  geom_point()

p3


# boxplot

mtcars$cyl <- as.factor(mtcars$cyl)

p4<-ggplot(mtcars, aes(x=cyl, y=mpg, shape=cyl, color=cyl)) + 
  geom_boxplot() +
  geom_jitter(position=position_jitter(0.2)) + theme(axis.text.x = element_text(angle = 90),
                                                     axis.title.x = element_text(angle = 90))

p4

# union

ggarrange(p1, p2, p3, p4, 
          labels = c("A", "B", "C", "D"),
          ncol = 2, nrow = 2)

