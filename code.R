
# paquetes ----------------------------------------------------------------
library(tidyverse)
library(patchwork)
library(lubridate)
library(ggrepel)
library(readxl)


# Objetos utilitarios -----------------------------------------------------

date_label <- function(date = Sys.Date()) {
  paste(str_to_title(month(date, label = TRUE)), year(date))
}

# Procesamiento -----------------------------------------------------------

# Importando la data
inbody <- read_excel("inbody.xlsx")

inbody <- inbody %>%
  mutate(
    fecha = ymd(fecha),
    date_label = date_label(fecha)
    )

# draft -------------------------------------------------------------------
