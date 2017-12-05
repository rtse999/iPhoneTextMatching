library(stringr)

list <- c("iPhone8 - Silver - 64 Gb", "iPhone 7 - 32Gb - Black", "iPhone 6 - Silver - 64Gb")
list <- str_to_lower(list)

target <- c("iPhone Silver 7 64Gb")
target <- c("iPhone Silver 7 64 Gb")

target <- str_split(target, boundary("word"))[[1]]
target_string <- str_to_lower(str_c(target, collapse = "|"))
str_view_all(list, target_string, match = TRUE)

str_count(list, target_string)

