#' Vergelijken COVID-19 invloed tussen twee landen
#'
#' Deze functie vergelijkt de invloede van COVID-19 tussen twee speciefieke landen.
#' @param data De COVID-19 dataset.
#' @param land1 De eerste land voor vergelijken.
#' @param land2 De tweede land voor vergelijken.
#' @export
vergelijken_invloed <- function(data, land1, land2) {
  library(dplyr)
  # Filter de dataset voor de opgegeven landen
  filtered_data <- data %>%
    dplyr::filter(countriesAndTerritories %in% c(land1, land2))

  # Bereken de impact van COVID-19 voor de opgegeven landen
  impact_data <- filtered_data %>%
    group_by(countriesAndTerritories) %>%
    summarise(Total_Cases = sum(cases),
              Total_Deaths = sum(deaths))

  return(impact_data)
}
