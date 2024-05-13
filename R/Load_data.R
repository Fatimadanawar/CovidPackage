#' Load COVID-19 Data
#'
#' This function loads the COVID-19 data from a specified path.
#' @param data_path The path to the data file.
#' @return A dataframe containing the COVID-19 data.
#' @export
load_covid_data <- function(data_path) {
  library(dplyr)
  # Lees de data in
  data <- read.csv(data_path, stringsAsFactors = FALSE)

  return(data)
}
