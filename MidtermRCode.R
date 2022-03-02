### Using Linear regression
### Predict the Price (Price) for used Toyota Corolla cars.
### Use the follwoing three predictors Age_08_04, KM, Fuel_Type
library(forecast)

car.df <- read.csv("ToyotaCorolla.csv")

# partition data into Training (70%) and Validation (30%) datasets
car.df$Fuel_Diesel <- ifelse(car.df$Fuel_Type== "Diesel",1, 0)
car.df$Fuel_Petrol <- ifelse(car.df$Fuel_Type== "Petrol",1,0)
set.seed(1)  # setting seed for reproduction
index <- sample(c(1:1000), 700)  
train <- car.df[index,]
valid <- car.df[-index,]

# use lm() to run a linear regression of Price on the 
# three predictors in the training set. 

price.lm <- lm(Price~ Age_08_04 + KM + Fuel_Diesel + Fuel_Petrol, data = train)

#  use options() to ensure numbers are not displayed in scientific notation.
options(scipen = 999)

# Display the results (summary()) of the linear regression
summary(price.lm)

# use predict() to make predictions on a new set. 
pred <- predict(price.lm, valid)

# use accuracy() to compute common accuracy measures.
accuracy(pred, valid$Price)

# recall that accuracy is computed against the validation dataset


