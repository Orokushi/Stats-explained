set.seed(0)

x <- floor(rnorm(n = 20, mean = 10, sd = 3))
x <- c(x, 25, 30)
hist(x, breaks = 1:30 + 0.5, xaxt = "n", col = "#fffec5")
axis(1, at = 1:30, gap.axis = 0)
abline(v = mean(x), col = "red", lty = 2, lwd = 2)

# variance ====
sum((x - mean(x))^2) / (length(x))
var(x)
sum((x - mean(x))^2) / (length(x) - 1)
segments(x0 = mean(x), y0 = 1.3, x1 = mean(x) + var(x), col = "orange", lwd = 3)
segments(x0 = mean(x), y0 = 1.3, x1 = mean(x) - var(x), col = "orange", lwd = 2, lty = 3)

# standard deviation ====
sqrt(sum((x - mean(x))^2) / length(x))
sd(x)
sqrt(sum((x - mean(x))^2) / (length(x) - 1))
segments(x0 = mean(x), y0 = 2.4, x1 = mean(x) + sd(x), col = "purple", lwd = 3)
segments(x0 = mean(x), y0 = 2.4, x1 = mean(x) - sd(x), col = "purple", lwd = 2, lty = 3)