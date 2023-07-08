## DATA TYPES

##=============== VECTORS ===============##

# Vectors are variables with one or more than one values of same type
# (logical,integer,real,complex,string).

#Different ways of writing a vector

A<-5:10
B<-c(2,4,6,8,10,12)   # here c is concatenation function
C<-c("cricket","football","hockey","basketball")
D<-scan()   # enter the no. one at a time and to stop just press enter

length(A)  # A contains 6 values
length(B)  # B contains 6 values
length(C)  # C contains 4 values

#===== VECTOR OPERATIONS =====#

#Character vectors cannot be added, subtracted or multiplied with another vectors
#numeric vectors can be added, subtracted or multiplied with another vectors of same length

A*B   #Multiplication
A+B   #Addition
A-B   #Subtraction
A/B   #Division
A>B   #Greater than
A<B   #Less than
A==B  #Equal to
A>=B  #Greater than equal to
A<=B  #Less than equal to
A!=B  #Not equal to
A&B   #Logical AND
A|B   #Logical OR
!A    #Logical NOT

#===== VECTOR FUNCTIONS =====#

x<-c(3,10,1,5,7,2,9)

max(x)       # gives maximum value in x
min(x)       # gives minimum value in x
sum(x)       # gives total of all values in x
diff(x)      # subtract the current no. from successive no.
cumsum(x)    # gives cumulative sum
cummax(x)    #
cummin(x)    #
cumprod(x)   # gives cumulative product
quantile(x)  # gives quartile value of x
mean(x)      # gives mean value of x
median(x)    # gives median value of x
range(x)     # gives max and min value of x
var(x)       # gives sample variance of x
sd(x)        # gives standard deviation of x
sort(x)      # sorts the data in ascending order
sort(x , decreasing = T)    # sorts the data in decreasing order
rev(sort(x)) # reverses the sorting
rank(x)      # gives the rank of the data in place of value
order(x)     # permutation to sort x in ascending order
which(x==7)  # displays index (position) of required element

#===== MISSING VALUES IN VECTOR =====#

a<-c(1:5,NA,NA,8:10)
a
length(a)

is.na(a)     # tells whether there is missing value or not 
             # gives output in the form of TRUE/FALSE

mean(a)      # mean cannot be calculated due to missing value

mean(a,na.rm=T)   # gives mean value by removing missing value
#na.rm=T argument is used to remove missing value from the vector

which(is.na(a))           # displays the position of NA
seq(along=a)[is.na(a)]

ifelse(is.na(a),0,a)  #converts the NA to zero
a[is.na(a)]<-0
a

#===== GENERATING SEQUENCES =====#

seq(1:10)

#seq(from = , to = , by = )

seq(0,5,0.5)   #creating seq from 0 to 5 in steps of 0.5
               # increasing sequence

seq(5,0,-0.5)  #creating seq from 5 to 0 in steps of -0.5
               # decreasing sequence

seq(length = 18, from = 5, by = 0.2)

# Generating sequence using repeat function

x<-rep(6,4)    #rep(x,times)  , repeat function
x

rep(c(11,12,13),times=3)    #repeats entire vector 3 times

rep(1:2,3)                  #repeats entire vector 3 times

rep(c(11,12,13),each=2)     #repeating each no. twice from the vector

rep(c(11,12,13),times=c(2,3,4))  # repeats each no. at given corresponding time

rep(1:4,each=2, times=3)

rep(1:3, length.out = 7)    # repeats the sequence and stops after 7

#===== VECTOR INDEXING =====#

s=c("aa","bb","cc","dd","ee")
s[3]         #show value at that position
s[-3]        #removes the value at that position
s[10]        #this range does not exits for s

s[c(2,3,3)]  #displays multiple values at given position
             #duplicates the same value by writing the same position again & again

s[c(2,1,3)]  #random indexing

s[2:4]       #range index

#===== Filtering Vectors =====#

y<-c(6,1:3,NA,12)
y
y[y>5]           

subset(y,y>5)    #subset function handles NA

which(y*y>9)     #selection function which ; displays the position of numbers
                    #which satisfy this condition

y*y>9            #tells whether each of the no. satisfy the condition or not 
                  #in the form of TRUE/FALSE
B=y[y*y>9]
B               #displays the value which satisfy this expression

a<-"hello"
b<-"55"

#paste function : concatenate several strings into one string

paste(a,b)          #By default there is space between the two characters

paste(a,b,sep="")   #Third argument : sep="" :2 character strings are to be pasted
                    # together without any separator between them 

paste(a,b,"a longer phrase containing blanks",sep="")

#If one of the arguments to paste is a vector, each of the elements of the vector
# is pasted to the specified character string to produce an object of same length
# as the vector

d<-c(a,b,"new")
e<-paste(d,"a longer phrase containing blanks")
e

#===== grep FUNCTION =====#

#grep function is used for pattern matching

p=c("apple","potato","grape","10","blue.flower")
grep("a",p)
grep("a",p,value = TRUE)
grep("[[:digit:]]",p,value = TRUE)

#===== substr , chartr & strsplit FUNCTIONS =====#

#substr function can be used to index a portion of a string

word="apples"
substr(word,start=2,stop=5)

substr(word,start = 1, stop = 1) <- "b"
word

# chartr: Translate a list if old character to new character
# Can act on vector of any length

Word="Apple"
chartr(old = "A", new = "a", Word)
chartr(old = "Ae", new = "aE", Word)

# strsplit : Splits a string into a list containing multiple strings based upon a defined delimiter.
# Delimiter : fixed character string or as a regular expression

WORD="apple|lime|orange"
v=strsplit(WORD,split = "|", fixed = TRUE)
v

##=============== MATRICES ===============##

# Vectors with two additional attributes : no. of rows & no. of columns
# They also have modes like numeric and character.
# Matrices are known as 2-D arrays.

y<-matrix(c(1,2,3,4),nrow=2,ncol=2,byrow = T)
y

M<-matrix(c(1,1,5,2),nrow = 2)
M
# Bydefault elements are assigned column wise

x<-matrix(rpois(20,1.5),nrow = 4)  #alternative way
x
#creates a matrix of ramdom integer from poisson distribution with mean 1.5 and observation 20

# MATRIX OPERATION

class(M)               # category to which M belongs
attributes(M)          # gives dimensions of matrix
y+M                    # addition
y-M                    # subtraction
y*M                    # Element-Wise multiplication
y/M                    # division
y%*%M                  # Matrix Multiplication
t(M)                   # gives transpose of a matrix
solve(M)               # gives inverse of a square matrix
diag(M)                # gives diagonal element
qr(M)$rank             # gives rank
ginv(M)                # Moorse-Penrose generalize inverse (uses lib MASS)
det(M)                 # Determinant of matrix

# MATRIX INDEXING

M[2,2]        # 2nd row , 2nd col
M[,2]         # entire 2nd col
M[1,]         # only 1st row

x<-matrix(c(50,70,40,90,60,80,50,90,100,50,30,70),nrow = 3)
row<-c("Test.1","Test.2","Test.3")    #giving row heading
rownames(x)<-row
x

rownames(x)<-rownames(x,do.NULL = FALSE, prefix = "Test.")    #alternative form of giving row heading
x

subs<-c("Maths","English","Science","History")    #giving column heading
colnames(x)<-subs
x

dimnames(x)<-list(NULL,paste("Subject.",1:4,sep = ""))
x

rowSums(x)       #total of each row
colSums(x)       #total of each column
rowMeans(x)      #mean value of each row
colMeans(x)      #mean value of each column

mean(x[,4])      #mean of 4th column
sd(x[3,])        #SD of 3rd row

#===== Adding Rows & Columns to the Matrix =====#

x<-rbind(x,apply(x,2,mean))   #rbind : adds row to a matrix
x<-cbind(x,apply(x,1,var))    #cbind : adds column to a matrix
x

colnames(x)<-c(1:4,"Variance")  #giving label to 5th column
rownames(x)<-c(1:3,"mean")      #giving label to 4th row
x

#===== Evaluating Functions with apply =====#

z<-matrix(1:16, nrow=4)
z
apply(z,1,sum)        # gives row totals
apply(z,2,sum)        # gives column totals 
apply(z,1,min)        # gives min value
apply(z,2,max)        # gives max value
apply(z,1,sqrt)       # gives squareroot 
apply(z,1,function(z) z^2+z)     # own defined function

##=============== ARRAYS ===============##

#Arrays are numeric objects with dimension attributes

array<-1:20
is.matrix(array)    #array is not a matrix
dim(array)          #since its not a matrix, therefore it has no dimension

dim(array)<-c(5,4)  #assigning dimension to array
dim(array)
is.matrix(array)    #now it has dimensions therefore it is a matrix

array

is.table(array)     #it is not a table object
                    # is.table function is used to check whether it is a table or not


A<-letters[1:18]
A
dim(A)<-c(3,2,3)     
A                   #here A is 3-D array

# ",," is used in Array coz "," is used in Matrix

A[,,1:2]         # selecting all rows and columns of table 1 & 2
A[,,3]           # selecting all rows and columns of table 3 only

A[3,,]           # selecting 3rd rows of all 3 tables
# the shape of the resulting matrix is altered by default in R
# to overcome this we can write drop=F
A[3,,,drop=F]

##=============== LISTS ===============##

#List is container of values, but its contents can be items of different data types.
#list are indicated with the dollar sign "$" in R.

a<-list(u=2,v="abc")
a

a$u
a$v

#===== LIST INDEXING =====#

j<-list(name="joe",sal=7000,union=T)
#different forms of accessing components of list
j$sal
j[["sal"]]
j[[2]]
j[[1]]
j$name
j[["name"]]

#===== Adding & Deleting List Elements =====#

d<-list(a="abcd",b=100)
d

d$c<-"r-project"    # adding a c component
d

d$b<-NULL      #deleting a list component by setting it to NULL
d

#===== Applying Functions to Lists =====#

lapply(list(1:5,20:22),median)      #gives a median value between 1:5 and 20:22
#gives the out separately (as a list)

sapply(list(1:5,25:29),median)      #gives a median value between 1:5 and 25:29
#gives out as a vector

#===== Recursive Lists =====#

#lists can be recursive, meaning that you can have lists within lists.

C<-(list(a=1,b=2,c=list(d=5,e=9)))
C

D<-(list(a=1,b=2,c=list(d=5,e=9)), recursive=TRUE)
D

##=============== DATA FRAMES ===============##

#A data frame is a list, with the components of that list being equal-length vectors.

kids<-c("John","Joe","Cloe")
ages<-c(12,10,8)
d<-data.frame(kids,ages,stringsAsFactors = FALSE)
d      # gives a matrix-like view

str(d)    #gives the structure of d
class(d)    #Identify the class of data
names(d)      #names of variables
head(d,2)      #gives first 2 start values
tail(d,2)     #gives last 2 values

#===== Accessing Data Frames =====#
d[[1]]
d$kids
d[,1]           #1st column
d[[2]]
d[1,]           #1st row

#===== Extracting Subdata Frames =====#

#A data frames can be viewed in row and column terms.
#We can extract subdata frames by rows and columns.

d[2:3,]     #2nd to 3rd rows and all columns
d[2:3,2]    #2nd to 3rd rows of 2nd columns
class(d[2:3,2])   # numeric : since all values are numbers
d[d$ages>=10,]    #here the condition is satisfied
d[,d$ages>=10]    # this displays all without satisfying condition

#===== Adding row or column =====#

#rbind() is used to add a row typically in the form of another data frame or list

rbind(d,list("Laura",19))

##=============== FACTORS ===============##

#Factor might be viewed simply as vector with little extra information
# i.e. record of the distinct values in that vector, called levels.

x<-c(1:3)
xfac<-factor(x)
xfac
str(xfac)        #Factor with 3 levels

#===== Functions with Factors =====#

#tapply function is used

ages<-c(25,26,55,37,21,42)
location<-c("Rural","Urban","Urban","Rural","Urban","Rural")
tapply(ages,location,mean)

#===== =====#

data()      # to see the list of built in data in R

data(package = .packages(all.available = TRUE))
# to see all available data sets (including those in installed packages)
