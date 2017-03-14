# replacesmartquotes [R]

## Description

The R function is located in the replacesmartquotes.r file. <br><br>The function takes one argument which is a character string or vector that contains the smart quotes aka curly quotes. The function will return the arugement with the smart / curly quotes removed and replaced by straight quotes. There is a removesmartquotes function in the removesmartquotes.r file which does the same thing except removes the smart quotes instead of replacing them with straight quotes.


## Example Usages:

```
test_string <- "“”‘‘‘‘‘‘'''’’’’’’’’"
replacesmartquotes(test_string)
```


```
library(tm)
corpus <- Corpus(VectorSource(c("Mary’s", "John’s")))
corpus <- tm_map(corpus, replacesmartquotes)
```

