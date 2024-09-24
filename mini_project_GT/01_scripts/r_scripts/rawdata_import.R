
#This script imports data directly from the PhenObs database online into the 00_rawdata folder of the project

#verify that the R project is the wd
getwd() #If not, change it to "mini-project_GT" folder

#link for downloading the raw data from PhenObs database in 2022 
url_raw <-  "https://idata.idiv.de/MMM/ShowMultimediaData/getFile?path=Datasets%255c3550%255crawdata_PhenObs_2022%281%29.csv"
destfile_raw <- "00_rawdata/PhenObs_2022_rawdata.csv"  # Path to save the file

download.file(url=url_raw,destfile= destfile_raw) #Downloading file in the right directory

#link for downloading the processed data from PhenObs database in 2022 
url_proc <-  "https://idata.idiv.de/MMM/ShowMultimediaData/getFile?path=Datasets%255c3550%255cprocesseddata_PhenObs_2022%281%29.csv"
destfile_proc <- "00_rawdata/PhenObs_2022_processeddata.csv"  # Path to save the file

download.file(url=url_proc,destfile= destfile_proc) #Downloading file in the right directory
