##DATES AND TIME

#===== Sys.time() FUNCTION =====#

Sys.time()  #Displays the system date and time
substr(as.character(Sys.time()),1,10)  #substring of Sys.time() from 1st character to 10th character = date
substr(as.character(Sys.time()),12,19) #substring of Sys.time() from 12th character to 19th character = time
unclass(Sys.time())  #Displays no. of seconds since 1st January 1970

date()    #Displays day month year time

x<-Sys.time()
class(x)    # gives output as "POSIXct" "POSIXt"
typeof(x)   # gives output as double
unclass(x)
