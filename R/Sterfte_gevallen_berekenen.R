#' Sterftegevallen berekenen
#'
#' deze functie berkent de sterftegevallen voor COVID-19 per land.
#' @param data De COVID-19 dataset.
#' @export
calculate_mortality_rate <- function(data) {
  mortality_data <- data %>%
    group_by(countriesAndTerritories) %>%
    summarise(Total_Deaths = sum(deaths),
              Population = max(cases),  # Assuming Population data is available
              Mortality_Rate = (Total_Deaths / Population) * 100000)  # per 100,000 population
  return(mortality_data)
}
