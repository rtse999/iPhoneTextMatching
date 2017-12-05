library(stringr) 

# Initiate string
target <- c("iPhone Silver 7 64 Gb")

# Split string list of individual words
target <- str_split(target, boundary("word"))[[1]]

# Recombine individual words into string separated by a "|" symbol
target_string <- str_c(target, collapse = "|")
                  
                  