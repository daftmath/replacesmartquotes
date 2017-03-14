# Removes directed aka curly quotes from a string and replaces them with non-directed straight quotes
library(magrittr)

# core logic
replacesmartquotes <- function(input_string){
  output_string <- gsub("'", "'", input_string) %>%
    gsub("'", "'", .) %>%
    gsub(""", '"', .) %>%
    gsub(""", '"', .) %>%
    gsub("[\x84\x93\x94]", '"', .) %>% # ANSI version
    gsub("[\u201C\u201D\u201E\u201F\u2033\u2036]", '"', .) %>%
    gsub("[\x82\x91\x92]", "'", .) %>% # ANSI version
    gsub("[\u2018\u2019\u201A\u201B\u2032\u2035]", "'", .)
  return(output_string)
  
}

# test case (run this function after making any changes to core logic)
test_replacesmartquotes <- function() {
  test_string_1 <- 'Greg's "dog" is "wierd". Mary's car is **also**! #cha_racters'
  test_string_2 <- """'''''''''''''''''"
  
  if((replacesmartquotes(test_string_1) == 'Greg\'s "dog" is "wierd". Mary\'s car is **also**! #cha_racters' &&
      replacesmartquotes(test_string_2) == "\"\"'''''''''''''''''") == TRUE) {
    print("PASS")
  } else {
    print("FAIL")
  }
  
}
