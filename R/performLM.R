#This statistical function will run a linear model to answer the question: Does behavior predict ODBA in crocs? Or, does the variation in ODBA differ across behaviors in individual crocs?
#
#________________________________________________________________________________________-

#' Perform a linear model with a categorical predictor (behavior) and a numeric response (ODBA)
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

performLM <- function(data, response_var, predictor_var) {
  model_fit <- lm(formula(paste(response_var, "~", predictor_var)), data = data)
  summary_model_fit <- summary(model_fit)
  print(summary_model_fit)
  return(summary_model_fit)
}

#lm <- performLM(data, "ODBA", "behavior")

