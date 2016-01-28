read.csv()
#set working directory first 
summary(x)

#100 repeats of 40 training runs (first 4000 rows)
#100 repeats of 100 test runs (next 10000 rows)
x.train <- x[1:4000,]
x.test <- x[4001:14000,]
#multiple regression 
#residual plot by using: lm
mod <- lm(y ~ ., data = x.train)
plot(resid(mod))
plot(resid(mod) ~ x.train)
#assume the residual is normal distributed 
abline(h = c(-0.2, 0.2))
abline(h = c(quantile(resid(mod), c(0.25)), quantile(resid(mod), c(0.975)))
#check independence 
#acf(resid(mod))

plot(resid(mod) ~ x.train[,5],)

mod <- lm(y ~ x1 + x3 +poly(x4,2), data = x.train)







