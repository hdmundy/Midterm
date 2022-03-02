### Using Linear regression
### Predict the Price (Price) for used Toyota Corolla cars.
### Use the follwoing three predictors Age_08_04, KM, Fuel_Type
library(forecast)

car.df <- read.csv("ToyotaCorolla.csv")

# partition data into Training (70%) and Validation (30%) datasets

# use lm() to run a linear regression of Price on the 
# three predictors in the training set. 


#  use options() to ensure numbers are not displayed in scientific notation.
options(scipen = 999)

# Display the results (summary()) of the linear regression

# use predict() to make predictions on a new set. 

# use accuracy() to compute common accuracy measures.
# recall that accuracy is computed against the validation dataset
accuracy(car.lm.pred, valid.df$Price)


