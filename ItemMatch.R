#
# Identifying and matching iPhone model data using regex
#
# Location: /Users/raymondtse/Dropbox/Analysis/Text Mining/Search Item List/ItemMatch.r
# First created: Friday 1 December 2017
# Last modified: 23:17 - Tuesday 5 December 2017
#

### System time ###
format(Sys.time(), "%a %b %d %H:%M:%S %Y")

#install.packages("hexbin")
library(stringr) 

devtools::session_info()

# List of items
list <- c("iPhone8 - Silver - 64 Gb", "iPhone 7 - 32Gb - Black", "iPhone 6 - Silver - 64Gb")
list <- str_to_lower(list)

# Search target
target <- c("iPhone Silver 7 64 Gb")

# Split string list of individual words
target <- str_split(target, boundary("word"))[[1]]

# Recombine individual words into string separated by a "|" symbol
# & convert to lower case
target_string <- str_to_lower(str_c(target, collapse = "|"))

str_view_all(list, target_string, match = TRUE)

str_count(list, target_string)

