# Final_Project

## Machine Learning Mock-Up

#### Data being used: 
Cleaned version of the housing data that was first received from Kaggle and then cleaned by applying ETL.
Machine Learning Library: ScikitLearn using supervised machine learning

#### Features discussed in being used: 
zpid, city, streetAddress, zipcode, latitude, longitude, propertyTaxRate, latestPrice, numPriceChanges, latest_saledate, latest_salemonth, latest_saleyear

#### Target: 
latestPrice

#### Training & Testing Data:
80% (12,136 rows before being cleaned) of the cleaned AusinHousingData will be used to train the machine learning and the other 20% (3,034 rows before being cleaned) will be used to test using Supervised Machine Learning.

#### Other Possible Features to be used: 
lotSize, livingAreaSqFt, homeType, numOfBedrooms

#### Goal:
Using Supervised Machine Learning along with the ScikitLearn library the features will be taken in to determine the target. The goal is to get the accuracy score as high as possible without over training the model. We will be looking at both precision and sensitivity as well. However, in the case of determining Austin House Prices, we find it more important to have high precision than high sensitivity to more accurately determine median prices.
