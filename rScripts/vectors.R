#Ari Lamstein Lecture 11-18-19
#Vectors




##### SET UP GLOBAL VARIABLES #####

even_numbers = c(2,4,6,8,10)
odd_numbers = c(1,3,5,7,9)
range = c(1:9)
alpha = c("a","b","c","d")

# Remove a variable
# rm(even_numbers)



##### Common Vectorization Patterns #####
#Single - Single

  
#Multi - Single
  odd_numbers2 = c(2,4,6,8,10) - 1
  even_numbers -1
  c(1,2)+2
#compares each number to see if it is less than 5
even_numbers < 5
#Multi - Multi same length
  #if vector is the same size then each value is added to one another
  mv1 = c(100, 100, 100, 100) + c(1,2,3,4)
  
#Multi - Multi different lengths
  # vector recycling - the smaller just reloops over itself
  mv2 = c(100, 200, 300, 400) + c(1,2)










##### Functions For Working with Vectors#####

#Common functions for numerial data include min max mean sum sort summary

  #Sort
  sort (even_numbers, decreasing = TRUE)
  
  #Reverse the Sort
  rev(sort (even_numbers, decreasing = TRUE))
  
  #The will result in a NA because it can't complete.
  sum(c(1,2, NA))
  ###sum(c(1,2, NA,))
  
  #Common functions for numerial data include min max mean sum sort summary
  #sort, rolower, toupper, paste   
  #paste will join two items together.
  

  
  
  
###Subsetting Vectors #####
  #Position 
  alpha[1]
  letters  #built in list of a - z
 
  #logical criteria
  length(alpha) #responds with total number of characters
  alpha[length(alpha)] #gets d or final letter
  alpha[c(1,4)] #gets the element at position 1 and 4 so a and d
  alpha[c(1:4)] #gets the entire range of elements 1 to 4
  
  alpha[c(TRUE,TRUE,FALSE,FALSE)] # returns the 1st and 2nd vector
  alpha[c(TRUE,FALSE,TRUE, FALSE)] # returns the 1st and 3rd vector
  
  alpha == "b"  #cpompares to the list and results in true or false
  
  alpha[]  #returns all of the elements
  
  #find most common element
  d = c("a", "a", "a","b", "c", "c")
  table(d)
  
  
  
  is_b = (alpha > "a" &alpha < "c")
  alpha[is_b]


 
#test fo NA values 
  x=c("the", "quick", "brown", NA, NA, NA)
  is_na = is.na(x)
  is_na  #prints out True and False
  sum(is_na) #converts to numeric
  x[is_na]  #prints out the three NA items
  ##length.(x[is_na])
  x[!is_na]
  
  
###updating Elements in a Vector
  x=c("the", "quick", "brown", NA, NA)
  x[3] = "blue" #changes the third item in the list
  
  y = -3:3  # creates the range  [1] -3 -2 -1  0  1  2  3
  y[y < 0] = NA     #change all - values to NA
  
  ####Topic####
  #this is is the 
  g = 2
  ####Topic2####
  
  