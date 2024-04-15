#1
dim(USArrests)
ncol(USArrests)
nrow(USArrests)
#2
head(USArrests)
tail(USArrests)
USArrests[2:3, "Rape"]
#3
USArrests[16:20,3]
#4
mode(USArrests)
class(USArrests)
typeof(USArrests)
for (i in colnames(USArrests)){
  print(mode(USArrests[i,]))
  print(class(USArrests[i,]))
  print(typeof(USArrests[i,]))
}
#5
for (i in colnames(USArrests)){
 print(i)
}
for (j in rownames(USArrests)){
  print(j)
}
for (k in dimnames(USArrests)){
  print(k)
}
#6
sum(USArrests)
mean(USArrests)
sd(as.matrix(USArrests))
var(as.matrix(USArrests))
#7 
colSums(USArrests)
colMeans(USArrests)
apply(USArrests, MARGIN = 2, sd)
apply(USArrests, MARGIN = 2, var)
#8
rowSums(USArrests)
rowMeans(USArrests)
apply(USArrests, MARGIN = 1, sd)
apply(USArrests, MARGIN = 1, var)
#9
for (i in colnames(USArrests)){
  print(USArrests[10:14,i])
}
#10
less_10 <- sum(colSums(USArrests < 10))
print(less_10)
#11
print(colSums(USArrests < 10))
#12
names <- rownames(USArrests)
print(names)
grep('Miss',names, value = TRUE)
#13
for (i in grep('New' ,names, value = TRUE)){
  print(USArrests[i,])
}
#14
write.table(USArrests[1:20,1:3], "data.csv", quote=FALSE, sep="\t", row.names=TRUE, col.names=TRUE)
#15
install.packages("openxlsx")
library(openxlsx)

states_M <- USArrests[grep("^M", rownames(USArrests)), ]
states_N <- USArrests[grep("^N", rownames(USArrests)), ]

stats_M <- summary(states_M)
stats_N <- summary(states_N)

write.xlsx(list(Statistics_M = stats_M, Statistics_N = stats_N), 
           file = "arrest_statistics.xlsx")
#16
install.packages("readxl")
library("readxl")
my_data <- read_excel("arrest_statistics.xlsx")
hz_data <- read.table("data.csv", header=TRUE, sep="\t")
