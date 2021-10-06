##############
## PlotRandom.R
##    Author: Maxwell Katsikas
##    Date: 10-06-2021
##
## Purpose: A function that will generate a random sample of iid normal random
##    values. It will then plot a histogram with an overlaid mean on the plot
##
## Inputs: 
##    numpts = the number of points to generate
##    mu = the theoretical mean of the normal distribution
##    sigma = the SD of the normal distribution
##    numbins = the number of bins in the program
##    meanColor = the color of the overlaid mean
##    seed = the random number generator seed, using to ensure reproducability
##
## Output: A list with the following elements:
##    Random_values = a vector of the generated random 'normal' values
##    Mean_x = sample mean of the Random_values
##    SD_x = the sample SD of Random_values
##############

plotRandomNormals <- function(numpts=100,
                              mu=0, sigma=1,
                              numbins=10,
                              meanColor="navy",
                              seed=10062021) {
  set.seed(seed)
  rand_x <- rnorm(numpts, mean=mu, sd=sigma)
  mean_x <- mean(rand_x)
  hist(rand_x, breaks=numbins)
  abline(v = mean_x, col=meanColor, lwd=2)
  return(list(Random_values=rand_x,
              Mean_x=mean_x, 
              SD_x=sd(rand_x)))
}

plotRandomNormals()
randomList = plotRandomNormals()








