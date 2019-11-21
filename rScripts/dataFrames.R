#Ari Lamstein Lecture 11-21-19
#DATA FRAMES

l = list(1, "hello")


df = data.frame(l, "hello")
df
#data frames are displayed as a table and column names auto generated, Row numbers displayed and strings do not have quotes around them


is.data.frame(df)
is.list(df)

#Get the second item in the DF
df[2]
df$X.hello.
df[[2]]
df[['X.hello.']]

#to get the class of the second item you  can use
class(df[2])
class(df$X.hello.)  #this is a factor

#??? 
df[2] = as.character(df[2])

#change the column names from X1 to X.hello
names(df) = c("col1","col2")
df


#all items in a df must be of the same length
df = data.frame(1:3, "hello")   #uses vector recycling
df
#what is the DF length?
length(df)

#create a new column named half that is equal to 1/2 the value of each element of X1.3
df$half=df$X1.3 / 2
df

#use ?nrow and ?ncol to calculate the total number of data points in df
nrow(df) #prints out 3 for the number of rows
nrow(df)*ncol(df)  #result is 9

#delete the column named 'half'
df$half = NULL  #one solution
df[3] = NULL  #another solution
df




####Load in mtcars####

#use ?head to only display the first three lines of mtcars
head(mtcars,3)  #this works
head(mtcars, n=3)  #so does this


# create a new column in mtcars named car_name
# set car_name equal to the row's name
# Then delete the data frame's rownames attribute

####fix this #1  ########################################################################################
#see notes!!!  59:50
mtcars$car_name = rownames(mtcars)
rownames(mtcars) <- NULL


#find mpg of mtcars
mean(mtcars$mpg)

#  ?summary returns 5 statistics on a vector/data frame. Use ?Summary to get statistics on mpg, and the whole mtcars data frame
summary(mtcars$mpg)
summary(mtcars)


#this will display a nice table in a new tab. includes a sort and a filter.
View(mtcars)   #note the capital V on the word View



####GUI vs Code###########

#Clear the environment
mtcars
#lecture turns on off the packages


#Base R vs TidyVerse


