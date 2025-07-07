set.seed(0)

x <- floor(rnorm(n = 20, mean = 10, sd = 3))
x <- c(x, 25, 30)
hist(x, breaks = 1:30 + 0.5, xaxt = "n", col = "#fffec5")
axis(1, at = 1:30, gap.axis = 0)

# median (50th percentile, second quartile) ====
median(x)
abline(v = median(x), col = "green", lty = 2, lwd = 3)

# 25th percentile (first quartile) ====
quantile(x, probs = 0.25)
abline(v = quantile(x, probs = 0.25), col = "lightgreen", lty = 2, lwd = 3)

# 75th percentile (third quartile) ====
quantile(x, probs = 0.75)
abline(v = quantile(x, probs = 0.75), col = "darkgreen", lty = 2, lwd = 3)

# 60th percentile ====
quantile(x, probs = 0.60)
abline(v = quantile(x, probs = 0.60), col = "brown", lty = 2, lwd = 3)

# 0th percentile (0th quartile) ====
quantile(x, probs = 0.0)
abline(v = quantile(x, probs = 0.0), col = "orange", lty = 2, lwd = 3)

# 100th percentile (4th quartile) ====
quantile(x, probs = 1)
abline(v = quantile(x, probs = 1), col = "purple", lty = 2, lwd = 3)

legend(21,
  5,
  legend = c("Q1", "Median", "Q3", "60p", "Q0", "Q4"),
  col = c("lightgreen", "green", "darkgreen", "brown", "orange", "purple"),
  lty = 2,
  lwd = 3,
  box.lty = 0,
  ncol = 2
)
