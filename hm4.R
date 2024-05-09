{
  library(tidyverse)
  library(DESeq2)
  library(GEOquery)
  library(canvasXpress)
  library(ggplot2)
  library(clinfun)
  library(GGally)
  library(factoextra)
  library(dplyr)
  library(pheatmap)
  setwd('Homeworks')
}
library(tidyr)

library(stringr)

gse=getGEO(filename="GSE149507_series_matrix.txt.gz",GSEMatrix=TRUE,getGPL = FALSE)
exp<-exprs(gse)


boxplot(exprs(gse),outline=FALSE) # something wrong, i can feel it...

corMatrix <- cor(exprs(gse),use="c")
pheatmap(corMatrix,fontsize=5) # beauty plot

sampleInfo <- pData(gse)
rownames(sampleInfo)
colnames(sampleInfo)
sampleInfo$"age:ch1"
sampleInfo$`smoking_years:ch1`
sampleInfo$data_row_count
sampleInfo$`gender:ch1`
par(bg = 'white')


barplot(prop.table(table(sampleInfo$`tissue:ch1`)))  # stupid plot 1 )
barplot(prop.table(table(sampleInfo$`gender:ch1`)))  # stupid plot 2 )


ggplot(data.frame(sampleInfo$`tissue:ch1`), aes(x=sampleInfo$`tissue:ch1`)) +
  geom_bar()  # another stupid plot but on ggplot )))

vec_x <- as.numeric(gsub("age: ", "", sampleInfo$characteristics_ch1.2))

vec_y <- as.character(gsub("tnm_stage: ", "",sampleInfo$characteristics_ch1.6))

class(vec_x)
class(vec_y)

test <- data.frame(samle = rownames(sampleInfo), age = vec_y, type = vec_x)
test



