#Ari Lamstein Lecture 11-20-19
#Factors and Lists


#### Factors ####
ages = c("child", "child", "adult", "senior")
ages
is.vector(ages)
is.character(ages) 

sort(ages, decreasing = FALSE)
sort(ages, decreasing = TRUE)
#note that this sort is not by age - it is alphabetic
#can we put child first and senior last?


ages_f = as.factor(ages)
ages_f
is.factor(ages_f)

#display first and fourth item in the Factor
ages_f[1]
ages_f[4]
ages_f[c(1, 4)]

ages_f2 = factor(ages, levels = c("child", "adult" ,"senior"))
sort(ages_f2, decreasing = FALSE)

#change Factor into a Character

ages_c = as.character(ages_f)
ages_c
class(ages_c)



#### Lists ####

x = list(1, "hello")
x


#Vectors creation with ?c and index with []
#Factor creation with ?factor and index with []
#List creation with ?list and index with [[]]

class(x)

#replacing a list element - the first item replace it with 1,2,3
x[[1]] = 1:3

