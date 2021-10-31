# Final_Project

# Presentation: 

## Topic: Changes in the Austin Real Estate Market

## Reason why we selected our topic: 

Austin is turning into one of the most expensive real estate markets in the country. Many large tech companies, including Elon Musk's SpaceX, are establishing new locations in the capital of Texas. Growth in the tech industry, coupled with the Covid-19 pandemic, has attracted an influx of out-of-state buyers from metropolitan areas in California who can afford to pay a significant amount over the asking price. From 2020 to 2021, this migration has dramatically decreased the supply of homes for sale, creating an unbalanced market in favor of sellers that is hard for local Austinites to compete with. The lack of inventory has caused the median sales price of a home in Austin rise from 327,000 to 465,000 while the median family income has only increased from 96,600 to 98,900 (1). The median price of a home in Austin is now about 5x the median family income. The benchmark of "luxury" real estate prices is now the standard for regular, non-luxury neighborhoods. Our team chose to investigate this topic to understand future trends in the Austin housing market. 

(1) https://www.austinmonitor.com/stories/2021/06/home-prices-in-austin-rose-100000-in-six-months-when-will-the-surge-end/


## Description of source data: 

The data we have selected to use was sourced from Kaggle (https://www.kaggle.com/ericpierce/austinhousingprices). 

This dataset is in CSV format and contains 15,171 home listings that were scraped from the web in January 2021 by Eric Pierce. There are 45 features included in the dataset. 

For our analysis, we will be focusing attributes the describe the location, price, and time of sale: 
* Id: The Zillow Property ID as a unique identifier 
* City: The name of the city or town the listing is located in; Austin metropolitan area + surrounding suburbs  
* Street Address: The physical address of the listing
* Zipcode:The 5-digit zipcode that the listing in located in
* Latitude
* Longitude
* Latest Price: The most recent available price at time of data acquisition.
* Number of Price Changes: The number of price changes a home has undergone since being listed.
* Latest Sale Date: (YYYY-MM-DD).
* Latest Sales Month: The month the home sold (DD-MM).
* Latest Sales Year: The year the property sold (2018-2021).

Additionally, we will also consider these features when predicting the price of a home:
* Home Type: SingleFamily Home, Condo, Townhouse, etc.
* Lot size
* Living Area Square Feet
* Number of Bedrooms and Bathrooms
* Property Tax Rate: Tax paid on property that is owned by an individual. The average property tax rate in Texas is 1.80%. Property tax rates are usually higher within city limits. 

## Question we hope to answer with our data: What is the median price of a home for each neighborhood in Austin, TX?
* We hope to predict the median price of a home based on the neighborhood 6 months into the future based on previously defined attributes.



# GitHub:

## Description of Communication Protocols: Technologies Used

### Data Cleaning and Analysis

Pandas will be used to clean the data and perform an exploratory analysis. Further analysis will be completed using Python in Jupyter Notebook.

### Database Storage

SQL is the database we intend to use and we will integrate Flask to display the data.

### Machine Learning

SciKitLearn is the ML library we'll be using to create a classifier. Our training and testing setup is 80% training and 20% testing. The testing and training data will contain 17 features based on location, price, time of sale, size, and home type. Our target will be the latestPrice. The goal is to take the 17 features and the target of the training data to accurately retrieve the target, latestPrice. 

### Dashboard

In addition to using a Flask template, we will also integrate D3.js for a fully functioning and interactive dashboard. It will be hosted on Tableau.



# Machine Learning Mockup 

## Data being used: 

Cleaned version of the housing data that was first received from Kaggle and then cleaned by applying ETL.

## Machine Learning Library: 

SciKitLearn is the ML library we'll be using to create a classifier. Our training and testing setup is 80% training and 20% testing. The testing and training data will contain 17 features based on location, price, time of sale, size, and home type. Our target will be the latestPrice. The goal is to take the 17 features and the target of the training data to accurately retrieve the target, latestPrice. 

## Features discussed in being used: 

* zpid
* city
* streetAddress
* zipcode
* latitude
* longitude
* latestPrice
* numPriceChanges
* latest_saledate
* latest_salemonth
* latest_saleyear

## Target: latestPrice

## Training & Testing Data: 

80% (12,136 rows before being cleaned) of the cleaned AusinHousingData will be used to train the machine learning and the other 20% (3,034 rows before being cleaned) will be used to test using Supervised Machine Learning.

## Training Model: We will be using Decision Trees as our initial step to test the training set. From there, we will measure how well it does at training with the data. 

## Other Possible Features to be used: 

* homeType 
* lotSize
* livingAreaSqFt
* numOfBedrooms
* numOfBathrooms
* propertyTaxRate

## Goal: 

Using Supervised Machine Learning along with the ScikitLearn library the features will be taken in to determine the target. The goal is to get the accuracy score as high as possible without over training the model. We will be looking at both precision and sensitivity as well. However, in the case of determining Austin House Prices, we find it more important to have high precision than high sensitivity to more accurately determine median prices.
