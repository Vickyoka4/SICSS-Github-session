

library(readr)
library(readxl)
library(tidyverse)
library(lubridate)
library(janitor)
library(countrycode)
library(Hmisc)



my_interp <- function(chunk){
  who_time <- c(2000.5, 2010.5, 2015.5, 2019.5)
  
  approxExtrap(x = chunk$year, 
               y = chunk$e0, 
               xout = who_time) %>% 
    as_tibble() %>% 
    rename(year = x, e0 = y)
}