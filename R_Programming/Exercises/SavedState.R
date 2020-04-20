d = as.Date("2020-07-04")
testfunc <- function() {return(34) }
howmuch = testfunc()

categories = c("male","female","transgender-male","transgender-female","male","male")
factor1 = factor(categories)
levels(factor1)
unclass(factor1)

name = c("cat","dog","mouse","rabbit","parrot")
howmany = c(3,4,2,5,2)
IsPet = c(TRUE,TRUE,FALSE,FALSE,TRUE)
df = data.frame(name,howmany,IsPet)

