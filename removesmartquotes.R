# Removes directed aka curly quotes from a string
library(magrittr)

# core logic
removesmartquotes <- function(input_string){
  output_string <- gsub("‘", "", input_string) %>%
    gsub("’", "", .) %>%
    gsub("“", "", .) %>%
    gsub("”", "", .) %>%
    gsub("[\x84\x93\x94]", "", .) %>% # ANSI version
    gsub("[\u201C\u201D\u201E\u201F\u2033\u2036]", "", .) %>%
    gsub("[\x82\x91\x92]", "", .) %>% # ANSI version
    gsub("[\u2018\u2019\u201A\u201B\u2032\u2035]", "", .)
  return(output_string)
}


 
  

