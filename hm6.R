{
  library(tidyverse)
  library(DESeq2)
  library(GEOquery)
  library(ggplot2)
  library(dplyr)
  library(pheatmap)
  library(ggsignif)
  library(ggfortify)
  
  setwd('Homeworks')
}

data("ToothGrowth") 


gse <- getGEO("GSE149507", GSEMatrix = TRUE)
gse <- gse[[1]]
sampleinfo <- pData(gse)
sampleinfo

data <- data.frame(exprs(gse))
head(data)

boxplot(data, main='Raw counts distribution', las=2) # как видим данные нормализованы

newdata <- as.data.frame(t(data))

newdata$gender <- sampleinfo$'gender:ch1'
newdata$tissue <- sampleinfo$'tissue:ch1'

boxplot( ~ gender, data = newdata)

