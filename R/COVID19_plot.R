#' Maak een plot van de dagelijkse gevallen voor een specifiek land
#' @param data Een data frame met de COVID-19 dataset
#' @param land Naam van het land waarvoor de plot moet worden gemaakt
#' @export
plot_dagelijkse_gevallen <- function(data, land) {
  library(ggplot2)

  # Filter de dataset voor het specifieke land
  data_land <- filter(data, countriesAndTerritories == land)

  # Maak een plot van de dagelijkse gevallen
  ggplot(data_land, aes(x = as.Date(dateRep, format = "%d/%m/%Y"), y = cases)) +
    geom_line() +
    labs(title = paste("Dagelijkse gevallen in", land),
         x = "Datum",
         y = "Aantal gevallen") +
    theme_minimal()
}
