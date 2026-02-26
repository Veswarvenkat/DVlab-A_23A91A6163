# Load required package
library(ggplot2)

# Load dataset
data(diamonds)

# Explore data
str(diamonds)
dim(diamonds)
?diamonds

# Basic scatter plot
plot(diamonds$carat, diamonds$price)

# Scatter plot with transparency
plot(
  diamonds$carat,
  diamonds$price,
  col = rgb(0,0,1,0.1),
  pch = 16,
  main = "Scatter Plot: Carat vs Price"
)

# Hexbin package (install only ONCE if not installed)
# install.packages("hexbin")

library(hexbin)

# Base R hexbin
hb <- hexbin(diamonds$carat, diamonds$price, xbins = 40)
plot(hb, main = "Hexbin Plot")

# ggplot hexbin
ggplot(diamonds, aes(x = carat, y = price)) +
  geom_hex()

# Styled ggplot hexbin
ggplot(diamonds, aes(carat, price)) +
  geom_hex() +
  labs(
    title = "Hexagon Binning: Diamond Structure",
    x = "carat",
    y = "price"
  ) +
  theme_minimal()

