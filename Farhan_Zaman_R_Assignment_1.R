#Exercise 1
rbinom(100,10,.3)

#Excercise 2
dbinom(2,10,.3)

#Excercise 3
#a
flip1 <- rbinom(10000,10,.3)
mean(flip1==2)
#b
flip2 <- rbinom(100000000,10,.3)
mean(flip2==2)

#Exercise 4  E[X] of binomial is np so 25*.3=7.5
mean(flips <- rbinom(100000,25,.3))

#Exercise 5 variance is E[x]*(1-p) so 5.25
var(rbinom(100000,25,.3))