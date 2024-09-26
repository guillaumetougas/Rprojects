getwd() #verify if the project directory is the right one

#create a snapshot of all packages used in the R Project with the renv package
renv::snapshot(library = .libPaths()) #This file will be recorded as a renv.lock file in the project directory
               