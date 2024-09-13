#This script reads PhenObs processed data and helps visualizing what is going on in there

#Import packages
library(ggplot2)
library(tidyverse)

#Make sure that we are in the good directory
getwd()

phenobs <- read.csv("00_rawdata/processeddata_PhenObs_2022.csv", sep=";")

#Set common theme for plots
theme_set(theme_bw())

#Plotting ranges in flowering peak for all gardens 
ggplot(phenobs,aes(Botanic_Garden,FlPeak))+
  geom_boxplot()+
  ggtitle("Variation of flowering peak through Botanical Gardens")+
    xlab("Botanic Garden")+
    ylab("Day of year of flowering peak")

ggsave("03_figures/botanic_garden_peakflowering.png", width = 10.40, height =6.5 )
  