
# Data cleaning Forbes Americas Top Colleges 20219 data set

library(readr)

Top_Colleges_2019 <- read_csv("data/ForbesAmericasTopColleges2019.csv")

Top_Colleges_2019

Top_Colleges_2019_cleaned <- na.omit(Top_Colleges_2019) 

# Median Calculation Function

calculate_medians <- function(Top_Colleges_2019_cleaned, college_data){
  median_scores <- data.frame("State" = levels(Top_Colleges_2019_cleaned$State), 
                              "Medians" = rep(NA, length = nlevels(Top_Colleges_2019_cleaned$State)))
  for (x in median_scores$State) {
    median_scores$Medians[median_scores$State == x] <- 
      median(Top_Colleges_2019_cleaned[[college_data]][Top_Colleges_2019_cleaned$State == x])
  }
  return(median_scores)
}