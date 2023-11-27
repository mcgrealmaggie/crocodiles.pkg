#This function will import the data set and define NAs by changing all values of "1000" to NA.
#This will serve as my "clean data" function, as I do not want to get rid of any NAs right now.

#________________________________________________________________________________________________________

#' Read in data and define NAs
#' 
#' Imports a csv file, defines the na's, and saves it as a dataframe for further analysis
#'
#'
#'@param file name of the .csv file to be read in
#'@param na defines na values according to how they are formatted in the raw data and converts them to na
#'@return a dataframe containing the raw data and appropriately labeled na values
#'
#'@export 
#'

readData <- function(file, na){
  data <- read_csv(file, na = na)
  return(data)
}
  

mcgreal_pkg <- readData(file = "mcgreal.pkg.csv", na = "1000")
