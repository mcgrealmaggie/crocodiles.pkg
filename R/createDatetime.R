#This function will import the data file containing raw sensor data and create a dataframe with an additional row for sample id numbers
#This will serve as my "clean data" function.
#________________________________________________________________________________________________________

#' Create and format a datetime column from existing date and time information in the dataset
#' 
#' Takes the original date and time information, combines it into a new column, and sets the appropriate format
#'
#'
#'@param data name of the dataset containing the date and time columns
#'@param date_col name of the column containing dates
#'@param time_col name of the column containing times
#'@return the original dataset with an additional column containing the newly formatted datetime
#'
#'@export 
#'



createDatetime <- function(data, date_col, time_col) {
  datetime_str <- paste(data[[date_col]], df[[time_col]], sep=" ")
  data$datetime <- as.POSIXct(datetime_str, format="%Y.%m.%d %H:%M:%S", tz="UTC")
  return(data)
}

#data <- create_datetime_column(data, "date", "time")
#head(data)


