#' Bereken het gemiddelde aantal dagelijkse gevallen per land
#' @param data Een data frame met de COVID-19 dataset
#' @return Een data frame met het gemiddelde aantal dagelijkse gevallen per land en wordt gesoreteerd per land van de hoogste naar de laagste sterfgevallen.
#' @export
bereken_gemiddelde_per_land <- function(data) {
  library(dplyr)

  gemiddelde_per_land <- data %>%
    group_by(countriesAndTerritories) %>%
    summarise(gemiddelde_dagelijkse_gevallen = mean(cases)) %>%
    arrange(desc(gemiddelde_dagelijkse_gevallen))

  return(gemiddelde_per_land)
}
