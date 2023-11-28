#This statistical function will run a linear model to answer the question: Does behavior predict ODBA in crocs? Or, does the variation in ODBA differ across behaviors in individual crocs?
#
#________________________________________________________________________________________-

#' Perform an Analysis of Variance (ANOVA) with a categorical predictor (behavior) and a numeric response (ODBA) variables
#' 
#' Uses the variables from your data set to run a linear model and summarizes the results
#'
#'
#'@param data name of the data set containing the variables of interest
#'@param response_var identifies this column as the response variable in the model
#'@param predictor_var identifies this column as the predictor variable in the model
#'@return returns a summary of the linear model
#'
#'@export 
#'

runANOVA <- function(data, response_var, predictor_var){
  anova_fit <- aov(formula(paste(response_var, "~", predictor_var)), data = data)
  summary_anova_fit <- summary(anova_fit)
  print(summary_anova_fit)
  return(summary_anova_fit)
}


#runANOVA(data, "ODBA", "behavior")

