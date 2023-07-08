#===== Apply Function =====#

# appply(x: martrix , Margin : 1(to perform on rows) or 2(to perform on columns) or 
# c(1,2) (to perform on both), Function (sum, mean, median, min, max, etc.))

m1<-matrix(c<-(1:10),nrow = 5,ncol = 6)
m1
a_m1<-apply(m1,2,sum)
a_m1

#===== Lapply Function =====#

# L in apply stands for list
# The output of lapply is a list
# It can be used for other objects like data frame and lists
# lapply function does not need a Margin

#lapply(x: A vector/object , Function : applied to each element of x)

movies<-c("SPIDERMAN","BATMAN","VERTIGO","CHINATOWN")
movies_lower<-lapply(movies, tolower)
str(movies_lower)

movies_lower<-unlist(lapply(movies, tolower)) 
#unlist function is used to convert the list into vector
str(movies_lower)

movies<-c("spiderman","batman","vertigo","chinatown")
movies_upper<-lapply(movies, toupper)
str(movies_upper)

#===== Sapply Function =====#

#sapply does the same job as lapply but returns a vector

#sapply(X: Vector/Object, Function: applied to each element of x)

dt<-cars
lmn_cars<-lapply(dt,min)
lmn_cars
smn_cars<-sapply(dt,min)
smn_cars

#===== User Built In Function =====#

#user built in function into lapply or sapply

avg<-function(x) {
  (max(x)+min(x)) / 2}
fcars<-sapply(dt, avg)
cars<-lapply(dt, avg)
fcars
cars

#===== Slice Vector =====#

#we can use lapply or sapply interchangeable to slice a dataframe.

below_ave <- function(x) {
  ave <-mean(x)
  return(x[x > ave])
}
dt_s<-sapply(dt, below_ave)
dt_l<-lapply(dt, below_ave)
identical(dt_s, dt_l)

#===== Tapply Function =====#

#It computes a measure or a function for each factor variable in a vector

#tapply(x: Object usually a vector, Index: list containing Factor, 
          #Function: applied to each element of x)

data(iris)
tapply(iris$Sepal.Width, iris$Species, median)
