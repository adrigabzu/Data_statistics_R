library(tidyverse)
library(readxl)


################# DATA HANDLING #########################

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
  filter(class %in% c("c-CS-m", "t-CS-m", "c-SC-m", "t-SC-m")) %>%
  # Sort increasing values by default, use desc(column_name) for descending
  arrange(Ubiquitin_N)

unique(data$class)

# Show the results
ubiquitin_subset

################ PLOTS ##############################

# Let's plot
ggplot(data = ubiquitin_subset) +
  # Select your x, y values by column name and which categories for the colors
  geom_boxplot(mapping = aes(y = Ubiquitin_N, x = Genotype, fill = Genotype)) +
  # split the different paired plots and remove the color legends
  facet_grid( ~ Behavior) + guides(fill = FALSE) +
  # one of the predefined themes of ggplot2
  theme_bw()


ggplot(data = ubiquitin_subset) +
  # Boxplots per Behavior grouped by genotype
  geom_boxplot(mapping = aes(y = Ubiquitin_N, x = Behavior, fill = Behavior)) +
  facet_grid( ~ Genotype) + guides(fill = FALSE) +
  theme_bw()
