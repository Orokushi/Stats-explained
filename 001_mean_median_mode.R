# install DescTools package if needed:
# install.packages("DescTools")

set.seed(0)

x = floor(rnorm(n = 20, mean = 10, sd = 3))
hist(x, breaks = 1:20+0.5, xaxt = "n", col = '#FFCCFF')
axis(1, at = 1:20)

# MEAN (average) ----
points(mean(x),0, col='red',pch=16, cex = 2)

old_mean = mean(x)
x = c(x, 30,30)

hist(x, breaks = 1:30+0.5, xaxt = "n", col = '#FFCCFF')
axis(1, at = 1:30)
points(mean(x), 0, col='red',pch=16, cex = 2)
points(old_mean, 0, pch=1, cex = 2)

# MEDIAN ----

hist(x, breaks = 1:30+0.5, xaxt = "n", col = '#FFCCFF')
axis(1, at = 1:30)
points(mean(x), 0, col='red',pch=16, cex = 2)
points(median(x), 0, col='green',pch=16, cex = 2)

# MODE ----

points(DescTools::Mode(x), 0, col='blue',pch=16, cex = 2)

x = c(x, 6,6,6,6)

hist(x, breaks = 1:30+0.5, xaxt = "n", col = '#FFCCFF')
axis(1, at = 1:30)
points(mean(x), 0, col='red',pch=16, cex = 2)
points(median(x), 0, col='green',pch=16, cex = 2)
points(DescTools::Mode(x), 0, col='blue',pch=16, cex = 2)


cars <- sample(c("black","grey", "red"), 10, replace = T)
DescTools::Mode(cars)
barplot(table(cars), col=names(table(cars)))
