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
