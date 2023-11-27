#This function will take the raw acceleration measurements for each axis (X, Y, and Z), compute their absolute values, and add them together to calculate Overall Dynamic Body Acceleration (ODBA) 
#This additional time-series column will quantify the motions associated with each behavior and ultimately describe the activity levels of the crocodile over the sampling period.
#This will be my "feature extraction" section.
#____________________________________________________________________________________________

#' Calculate Overall Dynamic Body Acceleration from raw triaxial acceleration values. 
#' 
#' Creates and stores ODBA values as a new column in the data set for later use.
#'
#'
#'@param data dataframe containing the raw sensor data
#'@param x column containing raw acceleration values for the X-axis
#'@param y column containing raw acceleration values for the Y-axis
#'@param z column containing raw acceleration values for the Z-axis
#'@return ODBA column containing the sum of the absolute values of all three axes
#'
#'@export 
#'



calculateODBA <- function(df, x_col, y_col, z_col){
  ODBA <- df %>% 
    mutate(ODBA = abs({{x_col}}) + abs({{y_col}}) + abs({{z_col}}))
  return(ODBA)
}

#data <- calculateODBA(data = data, x = X, y = Y, z = Z)
#head(data)



