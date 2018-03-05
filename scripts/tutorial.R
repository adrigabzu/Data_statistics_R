library(tidyverse)
library(readxl)


# Import the dataset into R
data = read_excel("../datasets/Data_Cortex_Nuclear.xls")

# Have a look at the data
print(data)

# Store operations in a variable with <- or =
ubiquitin_subset <-
  # Select the columns to keep, to select everything but a column use -
  data %>% select(MouseID,
                  Ubiquitin_N,
                  Genotype,
                  ends_with("vior"),
                  contains("Treat") ,
                  class) %>%
  # Keep rows of class c-CS-m and c-SC-m
  filter(class %in% c("c-CS-m", "c-SC-m")) %>%
  # Sort increasing values by default, use desc(column_name) for descending
  arrange(Ubiquitin_N)

# Show the results
ubiquitin_subset
