#1. 
cat("\"")
cat("ab\ncd")
cat("a\tb\nc\td")

#2. 
cat(":-\\")
cat("(^_^\")")
cat("@_'-'")
cat("\\m/")

#3. 
library(stringr)
?str_locate
?str_sub

#4. 
str_locate(string = "great", pattern = "a")
list = c("great", "fantastic", "super")
str_locate(string = list, pattern = "a")
occurance = str_locate_all(string = list, pattern = "a")

occurance[1]
occurance[1,1]
#occurance[1,1] is wrong

occurance[[1]]

x = occurance[[1]]
x[1]

### or
occurance[[1]][1]

#5. 
str_sub(string = "testing", start = 1, end = 3)
str_sub(string = "testing", end = 3)

str_sub("testing", start = 4, end = str_length("testing"))
str_sub("testing", start = 1, end = 4)

#6.
input <- c("abc", "defg")
str_sub(input, c(2,3))

#str_sub(vector, starting point, ending point) 
# if we don't specify the end, it will be the end of the string 

#7.
emails <- readRDS("email(1).rds")
emails[1]
cat(emails[10])

str_locate(string = emails[1], pattern = "\n\n")

#8. 
metadata1 = str_sub(string = emails[1], start = 1, end = 842)
cat(metadata1)
body1 = str_sub(string = emails[1], start = 843)
cat(body1)

#9.
str_split(string = metadata1, pattern = "\n")

#10.
cat(emails)
breaks = str_locate(string = emails, pattern = "\n\n")

metadata = str_sub(string = emails, start = 1, end = breaks[,1])

body = str_sub(string = emails, start = breaks[,2])

### Handout 2
#1. 

fruit = c("apple", "banana", "pear", "pineapple")

#2. 
str_detect(fruit, "a")
str_detect(fruit, pattern = "^a")
str_detect(fruit, pattern = "a$")
str_detect(fruit, "[aeiou]")
str_detect(fruit, "[a-d]")

#detect a string that starts with "a" and ends with "e"

#3.
str_detect(fruit, "^a[a-z]*e$")

#4. 
phone = "213 740 4826"
