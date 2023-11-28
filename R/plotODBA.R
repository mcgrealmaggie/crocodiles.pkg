#This plotting function will allow me to visualize the relationship between ODBA, or activity patterns, and behaviors performed by crocodiles 
#This will help me understand which the general patterns of activity/energy expenditure for each behavior performed, including the among and within behavior variation in ODBA

#____________________________________________________________________________________________

#' Create a plot showing the nature of the relationship between crocodile behaviors and their mean ODBA, or activity levels
#' 
#' Creates a plot showing the distribution and variance of ODBA for each behavior
#'
#'
#'@param data name of the data set containing the variables of interest
#'@param x_var response variable (ODBA)
#'@param y_var predictor variable (behavior)
#'@return a plot visualizing the results of the linear model including means to see the relationship between activity levels and behavior
#'
#'@export 
#'

plotODBA <- function(data, x_var, y_var) {
  library(ggplot2)
  plot <- ggplot(data, aes(x = !!sym(x_var), y = !!sym(y_var), color = !!sym(x_var))) +
    geom_jitter() +
    labs(x = "Behavior", y = "ODBA") +
    theme(legend.position = "none") +
    stat_summary(fun.data = "mean_se", color = "black")
  print(plot)
}

#plotODBA(data, "behavior", "ODBA")
