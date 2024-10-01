#This script imports data directly from the PhenObs database online into the 00_rawdata folder of the project

#verify that the R project is the wd
getwd() #If not, change it to "mini-project_GT" folder

#link for downloading the PhenObs database in 2022 (Zip format)
url_zip <-  "https://idata.idiv.de/ddm/Data/DownloadZip/3550?version=6276"
destfile_zip <- "00_rawdata/PhenObs.zip"  # Path to save the file

#download file from URL to destination

download.file(url_zip, destfile_zip,method = "curl") #Downloading file in the right directory

#Unzip Zip file
unzip("./00_rawdata/phenObs.zip", exdir = "./00_rawdata")

#copy the processed data in the 02_outdata directory
file.copy(from = "./00_rawdata/processeddata_PhenObs_2022(1).csv", to = "./02_outdata/processeddata_PhenObs_2022(1).csv")

#read csv data to make sure data is readable
phenObs_proc <- read.csv("00_rawdata/processeddata_PhenObs_2022(1).csv", sep = ";") #Processed data
phenObs_raw <- read.csv("00_rawdata/rawdata_PhenObs_2022(1).csv", sep = ";") #Raw data
