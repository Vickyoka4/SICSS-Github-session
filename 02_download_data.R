if(!dir.exists(("Datat"))){dir.create("Data")}




download.file("https://population.un.org/wpp/Download/Files/1_Indicators%20(Standard)/EXCEL_FILES/3_Mortality/WPP2019_MORT_F07_2_LIFE_EXPECTANCY_0_MALE.xlsx",
              destfile = "Data/wpp2019_male_e0.xlsx")
download.file("https://population.un.org/wpp/Download/Files/1_Indicators%20(Standard)/EXCEL_FILES/3_Mortality/WPP2019_MORT_F07_3_LIFE_EXPECTANCY_0_FEMALE.xlsx",
              destfile = "Data/wpp2019_female_e0.xlsx")
