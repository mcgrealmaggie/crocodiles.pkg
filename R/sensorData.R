#This function will import the data file containing raw sensor data and create a dataframe with an additional row for sample id numbers
#This will serve as my "clean data" function.
#________________________________________________________________________________________________________

#' Read in raw sensor data, select columns of interest, and assign sample ID numbers to each row
#' 
#' Imports a csv file, saves it as a data.frame with only the columns relevant to the current analysis, and creates a sample ID column for further analysis
#'
#'
#'@param file name of the .csv file to be read in
#'@param sample_id creates a column called "sample ID" which numbers the rows in order
#'@return creates a dataframe containing the raw data and numerically labeled rows
#'
#'@export 
#'

sensorData <- function(file, col_1, col_2, col_3, col_4, col_5, col_6, sample_id){
  data <- file %>% 
    select(all_of(c(col_1, col_2, col_3, col_4, col_5, col_6))) %>% 
    tibble::rowid_to_column(sample_id)
  return(data)
}

#data <- sensorData("crocodile.csv")
#head(data)