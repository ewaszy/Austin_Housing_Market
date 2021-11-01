# Presentation: 

## Topic: Changes in the Austin Real Estate Market

## Reason why we selected our topic: 

Austin is turning into one of the most expensive real estate markets in the country. Many large tech companies, including Elon Musk's SpaceX, are establishing new locations in the capital of Texas. Growth in the tech industry, coupled with the Covid-19 pandemic, has attracted an influx of out-of-state buyers from metropolitan areas in California who can afford to pay a significant amount over the asking price. From 2020 to 2021, this migration has dramatically decreased the supply of homes for sale, creating an unbalanced market in favor of sellers that is hard for local Austinites to compete with. The lack of inventory has caused the median sales price of a home in Austin rise from 327,000 to 465,000 while the median family income has only increased from 96,600 to 98,900 (1). The median price of a home in Austin is now about 5x the median family income. The benchmark of "luxury" real estate prices is now the standard for regular, non-luxury neighborhoods. Our team chose to investigate this topic to understand future trends in the Austin housing market. 

(1) https://www.austinmonitor.com/stories/2021/06/home-prices-in-austin-rose-100000-in-six-months-when-will-the-surge-end/


## Description of source data: 

The data we have selected to use was sourced from Kaggle (https://www.kaggle.com/ericpierce/austinhousingprices). 

This dataset is in CSV format and contains 15,171 home listings that were scraped from the web in January 2021 by Eric Pierce. There are 45 variables included in the dataset. 

For our analysis, we will be focusing attributes the describe the location, price, time of sale, and size: 
* Id: The Zillow Property ID as a unique identifier 
* Zipcode:The 5-digit zipcode that the listing in located in
* Latitude
* Longitude
* Latest Price: The most recent available price at time of data acquisition
* Latest Sale Date: (YYYY-MM-DD)
* Living Area Square Feet


## Question we hope to answer with our data: What is the median price of a home for each neighborhood in Austin, TX?
* We hope to predict the median price of a home based on the neighborhood 6 months into the future based on previously defined attributes.



# GitHub:

## Description of Communication Protocols: Technologies Used

### Data Cleaning and Analysis

Pandas will be used to clean the data and perform an exploratory analysis. Further analysis will be completed using Python in Jupyter Notebook.

### Database Storage

SQL is the database we intend to use through Postgress. We will integrate Flask to display the data.

### Machine Learning

SciKitLearn is the ML library we'll be using to create a classifier. Our training and testing setup is 80% training and 20% testing. The testing and training data will contain 7 features based on location, price, time of sale, and size. The goal is to take the 7 features as the target of the training data to accurately retrieve the target, latestPrice. 

### Dashboard

In addition to using a Flask template, we will also integrate D3.js for a fully functioning and interactive dashboard. It will be hosted on Tableau.
