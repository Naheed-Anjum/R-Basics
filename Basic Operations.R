## BASIC OPERATION

#===== SETTING WORK DIRECTORY =====#

getwd()   # gives location of your work directory
#setwd("~/mydirectory")  to change work directory use this function
# NOTE: slashes either have to be forward or double backward

#===== HELP / EXAMPLE / ARGS FUNNCTION =====#

?median
help(median)

help.search("median")
??median

example(median)      # gives an example

args(median)         # gives statement argument

#===== =====#

# Returns a character vector giving names of all objects in the 
# search list that match your enquiry.

apropos("lm")
apropos("nova")

demo(graphics)   #gives example of various graphs plot by R

#===== ARITHMATIC OPERATORS =====#

# gives out put as numeric value

2+3    # addition
2-3    # subtraction
2*3    # multiplication
2/3    # division
2^4    # exponential (also ** is used)
4%%2   # modulo (gives remainder)
4%/%2  # modulo (gives quotient)

#===== RELATIONAL OPERATORS =====#

# gives output in the form of TRUE/FALSE 

3>4     # greater than
3>=4    # greater than equal to
5<6     # less than
5<=6    # less than equal to
5==6    # equal to
5!=6    # not equal to

#===== LOGICAL OPERATORS =====#

# gives output in the form of TRUE/FALSE

(9>2)&(5<3)     # AND operator
(9>2)|(5<3)     # OR operator
!((9>2)&(5<3))  # NOT operator
(9>2)&&(5<3)    # Logical AND operator ( AND with IF )
(9>2)||(5<3)    # Logical OR operator ( OR with IF )

#===== ASSIGNMENT OPERATORS =====#

# assigns values to variables

a=5
b<- 5
5->c

#===== BUILT IN FUNCTION IN R =====#

# floor, ceil and round function are used for rounding off

log(5)                # log to the base e of x
exp(5)                # antilog of x
log(5,6)              # log(x,n) : log to the base n of x
log10(5)              # log to the base 10 of x
sqrt(25)              # square root of x
factorial(5)          # x!
choose(10,5)          # binomial coefficients
gamma(5)              # gamma(x) i.e. x(x-1)!
lgamma(5)             # natural log of gamma(x)
floor(2.9)            # floor function : greatest integer < x
ceiling(-2.1)         # ceil function : smallest integer > x
trunc(5.6)            # closest integer to x between x and 0
round(2.02585665,2)   # round(x,digits=0) : round the value of x to an integer
signif(5.586258,6)    # signif(x,digits=6) : give x to 6 digits in scientific notation
runif(10)             # runif(n) : generates n random numbers between 0 and 1 from a uniform distribution
cos(1)                # cosine(x) ; in radians
sin(1)                # sine(x) ; in radians
tan(1)                # tangent(x) ; in radians
acos(1)               # inverse of cosine(x)
asin(1)               # inverse of sine(x)
atan(1)               # inverse of tangent(x)
abs(-5)               # absolute value of x, ignoring the minus sign if there is
prod(x)               # product of values of x

#===== NUMBERS WITH EXPONENTS =====#

# for very big numbers or very small numbers R uses the following scheme

1.9e3           # 1.9 multiplied by 1000
1.9e-3          # 1.9 multiplied by 1/1000

#===== INFINITY AND NAN =====#

3/0         # gives positive infinity
-12/0       # gives negative infinity
exp(-Inf)   # gives zero
0/Inf       # gives zero
(0:3)^Inf   # gives output for each value in sequence
0/0         # gives NaN(Not a Number)
Inf-Inf     # gives NaN 
Inf/Inf     # gives NaN

#===== HOW TO CHECK DATA CATEGORY =====#

# here class()/typeof()/mode() function tells us the category of data

a=2.2
class(a)    # here a is numeric
typeof(a)   # here a is double

b=2L
class(b)     # here b is integer
typeof(b)    # here b is integer

c=-1+0i
class(c)  # here c is complex
Re(c)     # Real part of complex number
Im(c)     # Imaginary part of complex number
typeof(c) # here c is complex

d="orange"
class(d)  # here d is character
typeof(d) # here d is character

e=2>4
class(e)  # here e is logical
typeof(e) # here e is logical

f=(2>4)&(5<3)
class(f)  # here f is logical
typeof(f) # here f is logical

#===== =====#

u=5>6
v="mango"
x=4
y=6L
z=-1+0i

u+x          # Logical + Numeric
class(u+x)   # here u+x is numeric

u+y          # Logical + Integer
class(u+y)   # here u+y is integer

u+z          # Logical + Complex
class(u+z)   # here u+z is complex

# Character + Logical , Character + Numeric , Character + Integer 
# & Character + Complex does not exists

x+y          # Numeric + Integer
class(x+y)   # here x+y is numeric

x+z          # Numeric + Complex
class(x+z)   # here x+z is complex

y+z          # Integer + Complex
class(y+z)   # here y+z is complex

# Hierarchy : Character , Complex , Numeric , Integer & Logical.

#===== as.function & is.function =====#

# as.function converts the given function into required function
# is.function checks the given function and gives output as TRUE/FALSE

u=5>6
as.character(u)  # output as FALSE
as.integer(u)    # output as zero (converts to zero)
as.numeric(u)    # output as zero (converts to zero)
as.complex(u)    # output as 0+0i

is.character(u)  # output as FALSE
is.integer(u)    # output as FALSE
is.logical(u)    # output as TRUE
is.numeric(u)    # output as FALSE
is.complex(u)    # output as FALSE
is.finite(u)     # output as TRUE
is.infinite(u)   # output as FALSE

v="mango"
as.numeric(v)
as.integer(v)
as.logical(v)
as.complex(v)
# character cannot be converted into any other category of data

is.character(v)  # output as TRUE
is.numeric(v)    # output as FALSE
is.integer(v)    # output as FALSE
is.logical(v)    # output as FALSE
is.complex(v)    # output as FALSE
is.finite(v)     # output as FALSE
is.infinite(v)   # output as FALSE

x=4
as.character(x)  # output as "4"
as.integer(x)    # output as 4
as.logical(x)    # output as TRUE
as.complex(x)    # output as 4+0i

is.character(x)  # output as FALSE
is.numeric(x)    # output as TRUE
is.integer(x)    # output as FALSE
is.logical(x)    # output as FALSE
is.complex(x)    # output as FALSE
is.finite(x)     # output as TRUE
is.infinite(x)   # output as FALSE

y=6L
as.character(y)  # output as "6"
as.numeric(y)    # output as 6
as.logical(y)    # output as TRUE
as.complex(y)    # output as 6+0i

is.character(y)  # output as FALSE
is.numeric(y)    # output as TRUE
is.integer(y)    # output as TRUE
is.logical(y)    # output as FALSE
is.complex(y)    # output as FALSE
is.finite(y)     # output as TRUE
is.infinite(y)   # output as FALSE

z=-1+0i
as.character(z)  # output as "-1+0i"
as.numeric(z)    # output as -1 ie only real part of complex no.
as.integer(z)    # output as -1 ie only real part of complex no.
as.logical(z)    # output as TRUE

is.character(z)  # output as FALSE
is.numeric(z)    # output as FALSE
is.integer(z)    # output as FALSE
is.logical(z)    # output as FALSE
is.complex(z)    # output as TRUE
is.finite(z)     # output as TRUE
is.infinite(z)   # output as FALSE
