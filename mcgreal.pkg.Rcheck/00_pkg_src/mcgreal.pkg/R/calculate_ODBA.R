#This function will add the absolute values of 3 columns together (X, Y, and Z axes of either of the two types of acceleration or gyroscope) to produce an output column of ODBA, which is a proxy for energy expenditure and what I'll use to determine and characterize general activity levels.
#_________________________________________________________________________________

#' Calculate the ODBA values of each measurement in a column
#' 
#' Creates and stores each measurement's ODBA in a new column in the data set
#'
#'
#'@param data dataframe containing column of interest
#'@param col_one column containing absolute values from accelerometer's x-axis
#'@param col_two column containing absolute values from accelerometer's y-axis
#'@param col_three column containing absolute values from accelerometer's z-axis
#'@param new_col name new column in which ODBA values will be stored
#'@return new The new column containing the calculated ODBA values (numeric)
#'
#'@export 
#'

ODBA <- function(data, col_one, col_two, col_three, new_col){
  new <- data %>% 
    mutate(new = {{col_one}} + {{col_two}} + {{col_three}}) %>% 
    rename({{new_col}} := new)
  return(new)
}
  
#ODBA1 <- ODBA(data = abs,
 #               col_one = absAcc_X,
#                col_two = absAcc_Y, 
#                col_three = absAcc_Z, 
#                new_col = ODBA)
#View(ODBA1)  
