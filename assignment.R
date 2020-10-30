# Starter Code
library(readr)
library(dplyr)

## First step ------
## import the sample data from the following path: "data/sample_data.csv"
sample_data <- read_csv("data/sample_data.csv")


## Second step ------
## select the observations from the variable `Region` that does not contain `Central`
filtered_data <- filter(sample_data, Region != "Central")


## Third step -------
## remove the variable `Total`
selected_data <- select(filtered_data, Region:`Unit Cost`)


## Fourth step -------
## rearrange the data by `Unit Cost`, ascending order
arranged_data <- arrange(selected_data, `Unit Cost`)


##----- or in 1 step, using pipe----
#arranged_data2 <- sample_data %>% filter(Region != "Central") %>%
#  select(Region:`Unit Cost`) %>%
#  arrange(`Unit Cost`)



## Save your final dataset:
save(dataset, file = "output.rda", version = 2)
