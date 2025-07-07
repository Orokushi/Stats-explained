set.seed(0)

x <- floor(rnorm(n = 20, mean = 10, sd = 3))
x <- c(x, 25, 30)
hist(x, breaks = 1:30 + 0.5, xaxt = "n", col = "#fffec5")
axis(1, at = 1:30,gap.axis=0)
abline(v = mean(x), col = "red", lty = 2, lwd = 2)
abline(v = median(x), col = "green", lty = 2, lwd = 3)

# mean absolute deviation MAD ====
mean(abs(x - mean(x)))
mean_ad <- ie2misc::madstat(x)
mean_ad
segments(x0 = mean(x), y0 = 0.5, x1 = mean(x) + mean_ad, col = "red", lwd = 3)
segments(x0 = mean(x), y0 = 0.5, x1 = mean(x) - mean_ad, col = "red", lwd = 2, lty = 3)
segments(x0 = median(x), y0 = 2.5, x1 = median(x) + mean_ad, col = "red", lwd = 3)
segments(x0 = median(x), y0 = 2.5, x1 = median(x) - mean_ad, col = "red", lwd = 2, lty = 3)

# median absolute deviation MAD ====
median(abs(x - median(x)))
median_ad <- mad(x, constant = 1)
median_ad
segments(x0 = mean(x), y0 = 0.8, x1 = mean(x) + median_ad, col = "green", lwd = 3)
segments(x0 = mean(x), y0 = 0.8, x1 = mean(x) - median_ad, col = "green", lwd = 2, lty = 3)
segments(x0 = median(x), y0 = 2.8, x1 = median(x) + median_ad, col = "green", lwd = 3)
segments(x0 = median(x), y0 = 2.8, x1 = median(x) - median_ad, col = "green", lwd = 2, lty = 3)

# variance ====
sum((x - mean(x))^2) / (length(x))
var(x)
sum((x - mean(x))^2) / (length(x) - 1)
segments(x0 = mean(x), y0 = 1.1, x1 = mean(x) + var(x), col = "orange", lwd = 3)
segments(x0 = mean(x), y0 = 1.1, x1 = mean(x) - var(x), col = "orange", lwd = 2, lty = 3)
segments(x0 = median(x), y0 = 3.1, x1 = median(x) + var(x), col = "orange", lwd = 3)
segments(x0 = median(x), y0 = 3.1, x1 = median(x) - var(x), col = "orange", lwd = 2, lty = 3)

# standard deviation ====
sqrt(sum((x - mean(x))^2) / (length(x) - 1))
sd(x)
segments(x0 = mean(x), y0 = 1.4, x1 = mean(x) + sd(x), col = "purple", lwd = 3)
segments(x0 = mean(x), y0 = 1.4, x1 = mean(x) - sd(x), col = "purple", lwd = 2, lty = 3)
segments(x0 = median(x), y0 = 3.4, x1 = median(x) + sd(x), col = "purple", lwd = 3)
segments(x0 = median(x), y0 = 3.4, x1 = median(x) - sd(x), col = "purple", lwd = 2, lty = 3)

# range ====
range(x)
diff(range(x))
segments(x0 = min(x), y0 = 1.8, x1 = min(x) + diff(range(x)), col = "blue", lwd = 3)

# interquartile range IQR ====
quantile(x, probs = 0.75) - quantile(x, probs = 0.25)
IQR(x)

segments(x0 = quantile(x, probs = 0.25), y0 = 2.1, x1 = quantile(x, probs = 0.25) + IQR(x), col = "turquoise", lwd = 3)
q <- quantile(x, probs = c(0.25, 0.5, 0.75))
abline(v = q, col = c("lightgreen", "green", "darkgreen"), lty = 2, lwd = 3)


legend("topright",
  legend = c("Mean AD", "Median AD", "Variance", "Std", "Range", "IQR", "Q1", "Median", "Q3", "Mean"),
  col = c("red", "green", "orange", "purple", "blue", "turquoise", "lightgreen", "green", "darkgreen", "red"),
  lty = c(rep(1, 6), rep(2, 4)),
  lwd = 3,
  box.lty = 0,
  ncol = 2
)
