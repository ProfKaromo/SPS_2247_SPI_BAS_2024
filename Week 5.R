#Error Analysis
#Regression Analysis
x <- c(39, 65, 62, 90, 82, 75, 20, 98, 36, 78)
y <- c(47, 53, 58, 86, 62, 68, 65, 91, 51, 84)

model1 <- lm(y~x)
#SSE
yhat <- model1$fitted.values
ei <- y-yhat
SSE <- sum(ei^2)
SSE

#MSE
MSE <- SSE/length(y)
MSE

#RMSE
RMSE <- sqrt(MSE)
RMSE

summary(model1)
plot(x,y)
abline(model1)

b0 <- model1$coefficients[1]
b1 <- model1$coefficients[2]
b0;b1

coef(model1)[1]
coef(model1)[2]

model1$coef[1]
model1$coef[2]

mydata <- as.data.frame(cbind(x,y,model1$fitted.values,model1$residuals))
mydata
names(mydata) <- c("x","y","yhat","errors")
mydata

#The new model becomes
y = 38.66876 +0.4314921*x

cor(x,y)

