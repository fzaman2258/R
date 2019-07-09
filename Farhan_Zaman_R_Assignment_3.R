area=ames$Gr.Liv.Area
price=ames$SalePrice
summary(area)
hist(area)
#Exercise 1
#The distribution is skewed to the left which means much of the population
# lives in houses with areas of less than 3000

#Exercise 2
set.seed(23639824)
samp1=sample(area,50)
summary(samp1)
hist(samp1)

#Exercise 3
#This distribution is left skewed and it does a good job fo how the actual
#population distribution is

#Exercise 4
mean(samp1)
samp2=sample(area,50)
summary(samp2)
hist(samp2)
mean(samp2)
#The mean of samp2 is higher than samp1
#If we took two more samples of 100 and 1000 sizes respectively
# we would have means much closer tot he number 1499.69 because it is 
#more accurate to the real size so the 1000 sized sample would be most accurate

#Exercise 5
sample_means50= rep(0,5000)
for(i in 1:5000)
{
  samp=sample(area,50)
  sample_means50[i]=mean(samp)
}
hist(sample_means50)
hist(sample_means50,breaks=25)
#there are 5000 elements in sample_means50
#the center is 1475
#taking 50,000 sample means instead of 5000 sample means gives us a little
# more accurate distrubiton but it wouldnt change much at all

#Exercise 6
sample_means_small=rep(1,100)
for(i in 1:100)
{
  sample_means_small[i]=0;
}
print(sample_means_small)
for(i in 1:100)
{
  samp=sample(area,50)
  sample_means_small[i]=mean(samp)
}
print(sample_means_small)
#There is 100 elements in sample_means_small
#each element represents the mean of a sample of size 50

#Exercise 7
hist(sample_means50)
sample_means10=rep(0,5000)
sample_means100=rep(0,5000)
for(i in 1:5000)
{
  samp=sample(area,10)
  sample_means10[i]=mean(samp)
  samp=sample(area,100)
  sample_means100[i]=mean(samp)
}
par(mfrow=c(3,1))
xlimits=range(sample_means10)
hist(sample_means10,breaks=20, xlim=xlimits)
hist(sample_means50,breaks=20, xlim=xlimits)
hist(sample_means100,breaks=20, xlim=xlimits)
# when the sample size gets larger
#the center stays the same throughout all sizes
#the spread decreases as we icnrease sample size


#Exercise 8
samp=sample(price,50)
mean(samp)
#My best point estimate is 180,000

#Exercise 9
sample_means50=rep(1,5000)
for(i in 1:5000)
{
  samp=sample(price,50)
  sample_means50[i]=mean(samp)
}
xlimits=range(sample_means50)
hist(sample_means50,breaks=20,xlim=xlimits)
#This has a normal distribution, bell curve shape
#my guess for the mean price would be 180,000
mean(sample_means50)
#181,394.1


#Exercise 10
sample_means150=rep(1,5000)
for(i in 1:5000)
{
  samp=sample(price,150)
  sample_means150[i]=mean(samp)
}
xlimits=range(sample_means150)
hist(sample_means150,breaks=20,xlim=xlimits)
#the shape looks the same as the other histogram
#i would guess the mean sale price woud be closer so 181,000
mean(sample_means150)


#Exercise 11
#Exercise 9 has a smaller spread and if we are interested to get the true
# value we would prefer the larger spread since variance of the population
# is higher than sample so we want larger spread for larger variance