#This function will import the data file containing raw sensor data and create a dataframe with an additional row for sample id numbers
#This will serve as my "clean data" function.
#________________________________________________________________________________________________________

#' Read in raw data and assign sample ID numbers to each row
#' 
#' Imports a csv file, saves it as a dataframe, and creates a sample ID column for further analysis
#'
#'
#'@param file name of the .csv file to be read in
#'@param sample_id creates a column called "sample ID" which numbers the rows in order
#'@return creates a dataframe containing the raw data and numerically labeled rows
#'
#'@export 
#'

sensorData <- function(file, sample_id){
  data <- read_csv(file)
  data <- tibble::rowid_to_column(data, "sample_id")
  return(data)
}

#data <- sensorData("crocodile.csv")
#head(data)