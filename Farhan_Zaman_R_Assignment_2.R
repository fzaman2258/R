#Exercise 1
mdims = subset(bdims, bdims$sex == 1) 
fdims = subset(bdims, bdims$sex == 0)
fdims$hgt 
mdims$hgt
#not entirely bell shaped skewed left
hist(fdims$hgt) 
#graph is bell shaped
hist(mdims$hgt)

#Exercise 2
fhgtmean = mean(fdims$hgt) 
fhgtsd = sd(fdims$hgt)
hist(fdims$hgt, probability = TRUE , ylim = c(0, 0.06)) 
x = 140:190
y = dnorm(x = x, mean = fhgtmean, sd = fhgtsd) 
#it does mimic a bell shaped curve despite my intial thoughts of it not
lines(x = x, y = y, col = "blue")

#Exercise 3
#Normal probability plot doesn't entirely match line
qqnorm(fdims$hgt) 
qqline(fdims$hgt)
sim = rnorm(n = length(fdims$hgt), mean = fhgtmean, sd = fhgtsd) 
hist(sim)
#this plot fits a lot better
qqnorm(sim)
qqline(sim)

#Exercise 4
#this does conclude that the female heights are normal
qqnormsim(fdims$hgt)

#Exercise 5
#do it for female weight
fdims$wgt 
hist(fdims$wgt)
fwgtmean= mean(fdims$wgt)
fwgtsd= sd(fdims$wgt)
hist(fdims$wgt, probability = TRUE , ylim = c(0, 0.06)) 
x = 140:190
y = dnorm(x = x, mean = fwgtmean, sd = fwgtsd) 
lines(x = x, y = y, col = "blue")
qqnorm(fdims$wgt) 
qqline(fdims$wgt)
sim = rnorm(n = length(fdims$wgt), mean = fwgtmean, sd = fwgtsd) 
hist(sim)
qqnorm(sim)
qqline(sim)
qqnormsim(fdims$wgt)
#it seems female weight does follow a normal distribution

#Exercise 6
1 - pnorm(q = 182, mean = fhgtmean, sd = fhgtsd)
sum(fdims$hgt > 182)/length(fdims$hgt)
#a bii.di follows Plot B
fdims$bii.di 
hist(fdims$bii.di)
fbii.dimean= mean(fdims$bii.di)
fbii.disd= sd(fdims$bii.di)
hist(fdims$bii.di, probability = TRUE , ylim = c(0, 0.06)) 
x = 140:190
y = dnorm(x = x, mean = fbii.dimean, sd = fbii.disd) 
lines(x = x, y = y, col = "blue")
qqnorm(fdims$bii.di) 
qqline(fdims$bii.di)


#b elb.di follows Plot C
fdims$elb.di 
hist(fdims$elb.di)
felb.dimean= mean(fdims$elb.di)
felb.disd= sd(fdims$elb.di)
hist(fdims$elb.di, probability = TRUE , ylim = c(0, 0.06)) 
x = 140:190
y = dnorm(x = x, mean = felb.dimean, sd = felb.disd) 
lines(x = x, y = y, col = "blue")
qqnorm(fdims$elb.di) 
qqline(fdims$elb.di)


#c age follows Plot D
fdims$age 
hist(fdims$age)
fagemean= mean(fdims$age)
fagesd= sd(fdims$age)
hist(fdims$age, probability = TRUE , ylim = c(0, 0.06)) 
x = 140:190
y = dnorm(x = x, mean = fagemean, sd = fagesd) 
lines(x = x, y = y, col = "blue")
qqnorm(fdims$age) 
qqline(fdims$age)


#d che.de follows plot A
fdims$che.de
hist(fdims$che.de)
fche.demean= mean(fdims$che.de)
fche.desd= sd(fdims$che.de)
hist(fdims$che.de, probability = TRUE , ylim = c(0, 0.06)) 
x = 140:190
y = dnorm(x = x, mean = fche.demean, sd = fche.desd) 
lines(x = x, y = y, col = "blue")
qqnorm(fdims$che.de) 
qqline(fdims$che.de)

#Excercise 7
#C and D have a slight stepwise pattern because the histograms corresponding
# to it have adjacent bars with minimal changes in height that mimic a staircase
# versus the other 2 plots that have big changes in each adj bar and show a line

#Exercise 8
fdims$kne.di 
hist(fdims$kne.di)
fkne.dimean= mean(fdims$kne.di)
fkne.disd= sd(fdims$kne.di)
hist(fdims$kne.di, probability = TRUE , ylim = c(0, 0.06)) 
x = 140:190
y = dnorm(x = x, mean = fkne.dimean, sd = fkne.disd) 
lines(x = x, y = y, col = "blue")
qqnorm(fdims$kne.di) 
qqline(fdims$kne.di)
sim = rnorm(n = length(fdims$kne.di), mean = fkne.dimean, sd = fkne.disd) 
hist(sim)
qqnorm(sim)
qqline(sim)
qqnormsim(fdims$kne.di)
#It is left skewed as the histogram refelcts that