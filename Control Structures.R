##CONTROL STRUCTURES

#===== IF & IF-ELSE STATEMENTS =====#
# Used for conditional execution

x=12
if(x<10){
  x<-x+1
  cat("increase x")
} else {
  x<-x-1
  cat("decrease x")
}

#===== FOR LOOP =====#
#Used when iteration is required through a list

# 1. For Numeric Vector
for(i in (1:10)-3){
  print(c(i,i*i))
}

# 2. For Characteristics Vector
cars<-c("Hyundai","Tata","Honda")
for (j in cars) {
  print(paste(j,"-All variants", sep=""))
}

# 3. For Data in mtcars
data(mtcars)
for (vars in names(mtcars)) {
  print(vars)
}

#===== WHILE LOOP =====#
#Used when iteration is required as long as a specific condition is met
# there is no return statement inside the while loop, for returning the values use print

i<-2.999
while (i<= 4.999) {
  i<-i+0.999
  print(c(i,i-2,i*i))
}

#===== REPEAT LOOP =====#
# it is an infinite loop and used in association with a break statement

a<-5
repeat{
  print(a)
  a<-a+1
  if(a>3)
  break
}

#===== BREAK LOOP =====#
# A break statement is used in a loop to stop the iterations and 
# flow the control outside of the loop

x<-1:10
for (i in x) {
  if(i==2){
    break
  }
  print(i)
}

#===== NEXT STATEMENT =====#
#Enable to skip the current iteration of a loop without terminating it

x<-1:4
for (i in x) {
  if(i==2){
    next
  }
  print(i)
}

#===== STOP AND WARNING STATEMENT =====#
# Stop statement stop the function when a particular condition is encountered
# and prints a error message.

n<- -8
{if(n<0){stop('The argument "n" must be positive')}}

# Warning statement prints a warning message after the function finishes

n<- -8
{if(n<0){warning('The argument "n" must be positive')}}


##============================================================================##
## MAKE SCRIPT IN R

x<-c(0.678,2.9999,0.765342)
percent<-round(x*100,digits = 2)
result<-paste(percent,"%",sep = "")
print(result)

source('pastePercent.R')                    # error aa raha h
# Call a script by Ctrl+Shift+Enter

##===========================================================================##
## WRITING FUNCTIONS IN R / USER DEFINED FUNCTIONS

addingPercent<-function(x){percent<-round(x*100,digits = 2)
                           output<-paste(percent,"%",sep = "")
                           return(output)
                           }

addingPercent(x)

#===== FUNCTIONS : FOR  LOOP =====#
cars<-c("Honda","Toyota","Tata","Maruti","Ford","FKathy")
car.names<-function(x){
  for (name in x) {
    if(name=="Tata")
      break
    print(name)
  }
}

car.names(cars)

#===== FUNCTIONS : WHILE LOOP =====#
x<-5
f.while<-function(x){
  i<-0
  while(i<x){
    i<-i+1.5
    y<-i*2
    print(y)
  }
  return(c(i,y,y*2))
}

f.while(x)

#===== FUNCTIONS : REPEAT LOOP =====#
x<-c("Apple","Orange","Pear","Muskmelon","Blueberry","Grape")
fruit.repeat<-function(x){
  i<-1
  repeat{
    print(x[i])
    i<-i+1
    if(x[i]=="Blueberry")
      break
    }
}

fruit.repeat(x)

#===== CALCULATE A FORMULA =====#
# 1. (x^2+1)

w<-function(x)return(x^2+1)
x<-c(2,3,4)
w(x)

# 2. Create a function with 2 variables
z=function(x,m)return((x+m)^2)
z(x,10)

# 3. Compound Interest
CI<- function(p,r,n)return(p*(1+r)^n)
CI(10000,0.10,1:20)

# 4. Multiple Formula
# consider the continuous function
#f(x)=x^2+3*x+3      if x<0
#    =x+4            if 0<x<2
#    =x^3+5*x-7      if 2>=x

ContiX<-function(x){
  ifelse(x<0,x^2+3*x+3,ifelse(x<2,x+4,x^3+5*x-7))
}
ContiX(x)

# 5. Input Argument as Matrix
Matfn=function(matdata){
  matdata[matdata%%2==0]<-2*matdata[matdata%%2==0]
  matdata
}
Matfn(matdata)
