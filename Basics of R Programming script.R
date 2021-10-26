#Basics of R Programming

#see the guide on information on RStudio four window pane
#here is an article on tips/tricks on using RStudio
#https://www.dataquest.io/blog/rstudio-tips-tricks-shortcuts/
  
#different examples to get help in RStudio
help.search("function")
?"summary" #help on a function
args("array")  #help on function arguments
example("array") #example of the function
help("<-")     #help on operators
help("==")

#the hashtag (#) is used for comments

#Get and set working directory
getwd()
setwd("C:\\Users\\redbe\\OneDrive\\Documents\\BeVera\\Basics in R")
#RStudio works with one forward slash /, or two backslashes \\
getwd()

#using functions to either see the objects in work space or 
#remove objects in work space
c<-4 #lets add the object c with value 4 in the work space
ls() #listing of vars in work space
rm(c) #deletes vars in work space

#called left assignment
#<- or <<-
a<-1
b<<-2

#called right assignment
# -> ->>
3->c
4->>d

#setting variables
#R is a dynamically typed language, which means that we can change a variable's data type at will.
a <- 4
a <- c("sun", "moon", "rain", "clouds")

#"print" function vs. printing using the cat() function
print(pi)
print("a")
print(a)
print("The location occurs at', 2*pi, 'radians") # Apply print to character string, using '' then '
print('The location occurs at", 2*pi, "radians')  # Apply print to character string, using ' then "
#Output: [1] "The location occurs at\", 2*pi, \"radians"
#Or the cat() function, an alternative to print and lets you combine multiple items;
cat("The location occurs at", 2*pi, "radians.", "\n")    #"\n" passed as a separator
#Output: [1] The location occurs at  6.283185  radians.

#typeof() #numeric, character or logical
#class() #can be used by num, char, log but with other attribute informtion
#factor : as.factor() function

typeof(a)
typeof(v)
x<-6 #double
y<-6L #integer
is.integer(y)
is.numeric(y)
is.character(x)

#data types
v<-TRUE
print(v)
print(class(v))

w<-43.2 #numeric
print(class(w))
typeof(w)
l<-3L #integer
print(class(l))
typeof(l)
r<- 2+3i #complex
print(class(r))

v<-charToRaw("Hello") #character to Raw
print(class(v)) #"Hello" is stored as 48 65 6c 6c 6f

#R used as a calculator
3*9
5/3

a <- 5.5
b <- 3

print ( a+b )   	  #addition
print ( a-b )  	  #subtraction
print ( a*b )   	  #multiplication
print ( a/b )  	  #Division
print ( a%%b )	  #Remainder
print ( a%/%b )  #Quotient
print ( a^b ) 	  #Power of

#ways to create a vector - one-dimensional, homogeneous data structure
#c - combine
#: 
#seq - sequence
#rep - repetition

vec <- c(1,2,3) #numeric vector
typeof(vec)
length(vec)

vectorchar <-c("aa","bb","cc") #character vector
typeof(vectorchar)
length(vectorchar)

#using a colon, :, (creates a vector of integers)
v<-(13:20) 
v
print(v)

#use the seq for sequence to create vectors
vectorseq <-seq(from=2, to=20, by=2)
vectorseq

vectorseq2 <-seq(0,1,length.out=11)
vectorseq2

x<-c(1,2,3,4)
x
vectorrep <-rep(c(1,2,3,4), each=2) #creating a numeric vector with 'rep'
#[1] 1 1 2 2 3 3 4 4 #a vector 1:4, each value is repeated twice

#creating a repeat vector
x<-c(1,2,3,4)
vectorrep <-rep(x,2)
vectorrep

rep(y,times=2, each=2)
rep("spades",2) #replicating a character vector

#doing arithmetic on vectors
x<-(1:20)
print(x)
x+1

x<-rnorm(3)
x
y<-rnorm(3)
y

x+1
x+y
c(1,2,3,4,5) + c(5,4,3,2,1) #creating two vectors then adding
xy.prod <- x*y #multiple two vectors x and y

sum(1:20)
sum(c(1:20))

mean(1:20)  #stat operator using mean
sd(1:20)    #stat operator using sd
summary(1:20) #useful function
quantile(1:20,.75) #using the quantile

round(c(3.7232, 14.902),digits=1) #continuous vectors

y<-c(1,1,1,1,4,6,8) #discrete vectors
unique(y)
y<-c("1","1","1","1","4","6","8") 
unique(y)
y<-c(1,1,1,1,4,6,8,NA) #using as a numeric
unique(y)
y<-c("1","1","1","4","6","8","NA") #using as a string
unique(y)

y #remind ourselves the values of the object y
table(y) #table of counts
table(y)/sum(table(y)) #table of percentages instead of counts

#defining a function
x<-c(1:4)
x
y<-(1:2)
cv <-function(x) {mean(x)+2}
cv(x) #1,2,3,4, (+2) [1]4.5

cv1 <- function(x) {sd(x)/mean(x)} # x= parameter, {} is the expression
cv1(1:2)
sd(1:2)
mean(1:2)
#> cv1 <- function(x) {sd(x)/mean(x)}
#> cv1(1:2)
#[1] 0.4714045
#> sd(1:2)
#[1] 0.7071068
#> mean(1:2)
#[1] 1.5

#select vector elements
x[2] 
#identify the vector and in the square brackets, 
#ID the position of your selection 

vectorchar<-c("aa","bb","cc")
vectorchar[3]
vectorchar[-1]

#applicable to type of logical, numeric or complex.
#result is Boolean
v<-c(2,3,3,5,6)
w<-c(8,2,5,6,1)
print(v>w)
print(v==w)

#logical operators
print(v&&w)
logical_vector <-c(1:8)
logical_vector>6
logical_vector[(logical_vector>3) & (logical_vector<5)]

#creating factors
color_vector <-c("turq","red","green","ivory") #nominal cat to factor
class(color_vector)
factor_color <-factor(color_vector)
factor_color

day_vector <- c("evening","midnight","morning","midday","afternoon","evening")
factor_day <-factor(day_vector, order=TRUE, levels=c("morning","midday","afternoon","evening","midnight"))
print(factor_day)
summary(factor_day)

#list
x<- list(1:5, "d", c(TRUE,FALSE, TRUE), c(1,2,4,5))
str(x)

empID<-c(1,2,3,4) #vector of numeric
empName<-c("Aur","San","Elison","Evette") #vector of character
numberofEmp=4 #vector of 
class(numberofEmp)
empList=list(empID, empName, numberofEmp)
print(empList)
#using the [[]] I ID the position of the element, in the vector, in the list

empList[2] #slicing my list for the second vector

# double and single bracket to slice the list
empList[[2]][2]
empList[[2]]


#matrices
#[row,column]
#create a matrix of 4,3 dimension
rows<-c("row1","row2","row3","row4") #labels for the rows
cols <-c("col1","col2","col3") #labels for the columns

#matrix function
matrix_a <- matrix(c(1:12),nrow=4,byrow=TRUE,dimnames = list(rows,cols))
matrix_a
dim(matrix_a)

#cbind for binding a column
#rbind for binding a row
matrix_a1 <-cbind(matrix_a,c(13:16))
matrix_a1

#Slice a matrix [row,column]
matrix_a1[1,2] #first row and second column
matrix_a1[1:3,2:3] #rows 1-3, columns 2-3
matrix_a1[,1] #first column, leave the row blank and fill in column
matrix_a1[1,] #first row of the matrix

#creating the matrix A
A = matrix(c(2, 4, 3, 1, 5, 7), # create a matrix and add the data elements
           nrow=2,             	# number of rows 
           ncol=3,              # number of columns 
           byrow = TRUE)       	# fill matrix by rows 
A
A[2,3]     				 # element at 2nd row, 3rd column 
A[2, ]       			 # the 2nd row 
A[ ,c(1,3)]  			 # the 1st and 3rd columns 
B<- t(A)          # Use the t function to transpose of B 
c(B) 					# Use the c function to deconstruct a matrix


#Array
vector1 <-c(2,8,3)
vector2 <-c(10,14,17,12,11,15)
result <-array(c(vector1,vector2),dim=c(3,3,2))
result

#creating row,column and matrix name
columns.names<- c("COL1","COL2","COL3")
row.names <-c("ROW1","ROW2","ROW3")
matrix.name <-c("MATRIX1","MATRIX2")

#creating an array with 2 vectors, adding in row,column and matrix name
result<-array(c(vector1,vector2),dim=c(3,3,2),dimnames=list(row.names,columns.names,matrix.name))
print(result)

#matrix[row,column]
#array[row,column,dimension (i.e. matrix)]
print(result[3,,1]) #3rd row of the 1st matrix
print(result[2,3,2]) #2nd row, 3rd column of the 2 matrix 
print(result[,,2]) #prints 2nd matrix

dim(result)

array1<-array(c(vector1,vector2),dim=c(3,3,2))

vector3<-c(6,4,1)
vector4<-c(9,7,6,5,4,3,2)
array2<-array(c(vector3,vector4),dim=c(3,3,2))

matrix1<-array1[,,2]
matrix2<-array2[,,2]
result<-matrix1 + matrix2
print(result)

#apply function
vector1 <-c(2,8,3)
vector2 <-c(10,14,17,12,11,15)
result <-array(c(vector1,vector2),dim=c(3,3,2))
print(result)

#created an array from 2 vectors. Use the apply function to calculate across array
#c(1) - margin - apply over row
#c(2) - margin - apply over the column

result2<- apply(result, c(1), sum) #row
result2<- apply(result, c(2), sum) #column
print(result2)

#dataframes
df<- data.frame(x=1:3,y=c("a","b","c"))
typeof(df)
class(df)
is.data.frame(df)

#create a data frame using previous script of baby information
print(baby.names)

df<- data.frame(baby.names,baby.ages,baby.city,baby.eyecolor,baby.weight)
print(df)
is.data.frame(df)

#access information from my dataframe
#ncol
ncol(df)
nrow(df)
df2<-data.frame(df$baby.names[df$baby.city=="atlanta"])

#empList information during the List module
Name = c("Auriel", "Ray", "Asia")
Type = c("O+", "B-", "A-")
Age = c(36,23,62)
df <- data.frame(Name,Type,Age)
print(df)
is.data.frame(df)

df$State <- c("KY","PA","CA")
df

#accessing the dataframe as a matrix
df$State<-NULL
df
#delete the first row
df<-df[-1,]

#accessing the dataframe as a matrix
empList[[2]]
empList[[2]][2]

df
df[[1]][2] #access elements like a list [[]]: [[vector]][element]
df$Name[2] #opened up my dataframe and provided the 2 element
df[2,1]    #access elements like a matrix [row,column]

str(df) #structure of the df
View(df)
head(df) 
tail(df)
summary(df)

summary(df$Age)

#RStudio cheatsheets
#https://www.rstudio.com/resources/cheatsheets/


search() 
#read.csv

install.packages("readr")
library(readr)     #load of the package using library()

#does not like \, it likes / but you can use \\=/
covid <-read.csv("C:/Users/redbe/OneDrive/Documents/Bevera/Bevera-R-master/owid-covid-data.csv")
View(covid)
str(covid)
getwd() #using the shortcut method to install the file

library(readxl)
covid2 <-read_excel("C:/Users/redbe/OneDrive/Documents/Bevera/Bevera-R-master/owid-covid-data-xls.xlsx")
View(covid2)
str(covid2)


