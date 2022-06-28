source("01_Install_load_R.R")


Nigeria_code_UN <-
  countrycode::countrycode("Nigeria",
                           origin = 'country.name', 
                           destination = "un" )


#data used to make figure 1
e0m <- 
  read_excel("Data/wpp2019_male_e0.xlsx", 
             skip = 16, 
             na = "...") %>% 
  dplyr::filter(`Country code` == Nigeria_code_UN) %>% 
  pivot_longer(`1950-1955`:`2015-2020`, 
               names_to = "period", 
               values_to = "e0") %>% 
  mutate(sex = "Male") %>% 
  select(period, sex, e0)

e0f <- 
  read_excel("Data/wpp2019_female_e0.xlsx", 
             skip = 16, 
             na = "...") %>% 
  filter(`Country code` == Nigeria_code_UN) %>% 
  pivot_longer(`1950-1955`:`2015-2020`, 
               names_to = "period", 
               values_to = "e0") %>% 
  mutate(sex = "Female") %>% 
  select(period, sex, e0)

#combine male and female data
e0wpp <-
  bind_rows(e0m, e0f) %>% 
  separate(period, 
           into = c("year", NA), 
           sep = "-", 
           convert = TRUE) %>% 
  mutate(source = "WPP2019",
         year = year + 2.5) # mid period reference