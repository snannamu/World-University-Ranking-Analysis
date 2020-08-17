library(ggplot2)                 #Baisc Data visualization
library(readr) 
library(dplyr)
library(tidyr)
library(ggrepel)
library(RColorBrewer)
library(rworldmap)            #For map visualizations
library(rpart)                       # for decision trees
library(rattle)
library(tidyverse)
library(stringr)


rank_data <- read.csv("cwurData.csv")        
attach(rank_data)
head(rank_data)


rank_data %>% filter(world_rank <= 20 & year == 2015) %>%  select(world_rank, institution, year) %>%  arrange(world_rank) %>%
  ggplot(aes(x = world_rank, y = institution)) +  geom_bar(stat = "identity",fill ="green") +  geom_label(aes(label = institution),size = 3)
