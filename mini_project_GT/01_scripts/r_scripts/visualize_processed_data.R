#This script reads PhenObs processed data and helps visualizing what is going on in there

#Import packages
library(ggplot2)
library(tidyverse)

#Make sure that we are in the good directory
getwd()

phenobs <- read.csv("00_rawdata/processeddata_PhenObs_2022(1).csv", sep=";")

#Set common theme for plots
theme_set(theme_bw())

#Plotting ranges in flowering peak for all gardens 
ggplot(phenobs,aes(Botanic_Garden,FlPeak))+
  geom_boxplot()+
  ggtitle("Variation of flowering peak through Botanical Gardens")+
    xlab("Botanic Garden")+
    ylab("Day of year of flowering peak")

ggsave("03_figures/botanic_garden_peakflowering.png", width = 10.40, height =6.5 )

#Example for Achillea Millefolium
table_AM <- phenobs[phenobs$Species=="Achillea millefolium",]#subset AM

table_AM_fl_sen_peak<- table_AM[,c(2,8,15)]#keep variables of interest

write.csv(table_AM_fl_sen_peak, "03_figures/table_peak_fl_sen.csv", row.names = F)#prepare table for manuscript
  