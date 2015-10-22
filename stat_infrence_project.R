# exponential distribution compared to CLT

# exponential distrubtion
# mu = 1 / lambda
# sd = 1 / lambda
# Set lambda = 0.2 for all of the simulations
# You will investigate the distribution of averages of 40 exponentials. Note that you will need to do a thousand simulations.

# 1. Show the sample mean and compare it to the theoretical mean of the distribution.
# 2. Show how variable the sample is (via variance) and compare it to the theoretical variance of the distribution.
# 3. Show that the distribution is approximately normal.
lambda <- .2
nosim <- 1000
n <- 40
sim_matrix <- NULL
for (i in 1:40){
    sim_matrix <- rbind(rexp(nosim, lambda), sim_matrix)
}
sim_matrix <- as.data.frame(sim_matrix)
#histogram
simdata_means <- apply(simdata, 1, mean);
#hist of exponential distribution
hist(as.numeric(sim_matrix[1,]))

#get means of each row
means <- apply(sim_matrix, 1, mean)
#hist of means
hist(means)

#theoretical means
print(1/lambda)
#sample mean
print(mean(means))

#theoretical variance

#sample variance


#Show sample means distributed normally