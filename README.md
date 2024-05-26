# CovidPackage

`CovidPackage` is een R-package ontwikkeld om de analyse van COVID-19-gegevens te vergemakkelijken. Dit pakket biedt een reeks functies die specifiek zijn ontworpen voor het verwerken, analyseren en visualiseren van COVID-19-gerelateerde informatie. Of je nu gegevens wilt laden, het gemiddelde aantal dagelijkse gevallen wilt berekenen, sterftecijfers wilt analyseren, of de impact van COVID-19 tussen verschillende landen wilt vergelijken, `CovidPackage` biedt de tools die je nodig hebt.

Installatie
Je kunt het package installeren vanuit GitHub met behulp van `devtools`:

```{r}
# Installeer devtools als je het nog niet hebt
install.packages("devtools")

# Installeer CovidPackage van GitHub
devtools::install_github("Fatimadanawar/CovidPackage")

```
# Functies
`load_covid_data()`: Laadt COVID-19-gegevens van een opgegeven pad.

`bereken_gemiddelde_per_land()`: Bereken het gemiddelde aantal dagelijkse gevallen per land.

`calculate_mortality_rate()`: Bereken het sterftecijfer voor COVID-19 per land.

`vergelijken_invloed()`: Vergelijk de impact van COVID-19 tussen twee landen.

`plot_dagelijkse_gevallen()`: Maak een plot van de dagelijkse gevallen voor een specifiek land.

# Gebruik
Hier is een snel voorbeeld van hoe je een van de functies kunt gebruiken om COVID-19-gegevens te visualiseren:

```{r}
# Laad de benodigde pakketten
library(CovidPackage)

# Voorbeelddata laden
data <- load_covid_data("data-raw/data_covid19.csv")

# Plot aantal dagelijkse gevallen voor Nederland
plot_dagelijkse_gevallen(data, country = "Netherlands")
```


