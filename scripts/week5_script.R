data(package= .packages(all.available = TRUE))
library(ggplot2)
data(diamonds)
str(diamonds)
dim(diamonds)
?diamonds
plot(diamonds$carat, diamonds$price)
plot(diamonds$carat,diamonds$price,col=rgb(0,0,1,0.1),pch=16,main="scatter plot:carat vs price")
#Hexbin using
install.packages('hexbin')
library(hexbin)
hb <- hexbin(diamonds$carat,diamonds$price,xbins=40)
plot(hb,main="Hexbin Plot")
ggplot(diamonds,aes(x=carat,y=price))+
  geom_hex()
ggplot(diamonds,aes(carat,price))+
  geom_hex()+
  labs(title='Hexagon Binning:Diamond Structure',x='carat',y='price')+
  theme_minimal()

