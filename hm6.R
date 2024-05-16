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

gse <- getGEO("GSE149507", GSEMatrix = TRUE)
gse <- gse[[1]]
sampleinfo <- pData(gse)
sampleinfo

data <- data.frame(exprs(gse))

boxplot(data, main='Raw counts distribution', las=2) # как видим данные нормализованы

newdata <- as.data.frame(t(data))

newdata$gender <- sampleinfo$'gender:ch1'


newdata %>%
  pivot_longer(cols = -gender, names_to = "genes") %>%
  filter(genes %in% c("9_at", "999_at")) %>%
  ggplot(aes(x = gender, y = value)) +
  geom_boxplot(outlier.shape = NA) +
  geom_jitter(aes(color = genes), width = 0.2) +
  theme_minimal() +
  facet_wrap(~ genes)

boxplot('9_at' ~ gender, data = newdata)
