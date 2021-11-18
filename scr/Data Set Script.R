
# Inputting and cleaning Forbes Americas Top Colleges 20219 data set

library(readr)

Top_Colleges_2019 <- read_csv("data/ForbesAmericasTopColleges2019.csv")

Top_Colleges_2019

Top_Colleges_2019_cleaned <- na.omit(Top_Colleges_2019) 