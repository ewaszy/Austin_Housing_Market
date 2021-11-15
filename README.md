# Final_Project

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
* Latest Sale Year
* Living Area Square Feet
* Number of Bedrooms
* Number of Bathrooms
* Year Built
* Age of House

## Question we hope to answer with our data: What is the median price of a home for each neighborhood in Austin, TX?
* We hope to predict the median price of a home based on the neighborhood 6 months into the future based on previously defined attributes.

## Description of DataExploration Phase

The dataset we have chosen has over 15 thousand home listings and 45 initial features. While this data is extensive and essential to this project, it needs to be cleaned for duplicate and invalid entries, and scaled down to fit the project better. We will be using the Pandas software to do that, and for us to see the dataset better. As we analyze the data further we will be using Python in Jupyter Notebook.

## Description of Analysis Phase




# GitHub:

## Description of Communication Protocols: Technologies Used

### Data Cleaning and Analysis

Pandas will be used to clean the data and perform an exploratory analysis. Further analysis will be completed using Python in Jupyter Notebook.

### Database Storage

SQL is the database we intend to use through PostrgreSQL. We will integrate Flask to display the data. We will utilize SQL to display the tables made in Pandas and Python in a concise way that clearly shows the relationships between the columns. 

# Machine Learning

SciKitLearn is the ML library we'll be using to create a classifier. Our training and testing setup is 80% training and 20% testing. The testing and training data will contain 7 features based on location, price, time of sale, and size. The goal is to take the 7 features as the target of the training data to accurately retrieve the target, latestPrice. 

### Dashboard

In addition to using a Flask template, we will also integrate D3.js for a fully functioning and interactive dashboard. It will be hosted on Tableau.



## How to improve Machine Learning Model

#### Create Price Bins
To get the machine learning model to be more accurate I have created bins for the price. This would mean that the machine learning model is going to be predicting which price range a house will go into. These price ranges are determined by using the describe method and getting the quartiles and using those as the price ranges. The problem that I see with this method at the moment is that the bins are too big and therefore would not be the best to help determine pricing for a person with a certain budget. This could be simplified by creating more bins and rerunning the model. 
![image](https://user-images.githubusercontent.com/85451089/141715867-bfaec223-0e43-4150-b07f-4d4cb25d977b.png)

#### Create living area square feet bins
We used the same method as the Price to create bins for the living area square feet. 
![image](https://user-images.githubusercontent.com/85451089/141716046-788aee85-4262-4d6c-8541-8af2e5bb5a00.png)


### What went wrong
After creating the bins we got a perfect accuracy score. The only worry we currently have is that the data is over trained.
![image](https://user-images.githubusercontent.com/85451089/141716281-9bbc6198-2702-4fd4-a9fe-b4550c602fe0.png)


### Next steps to solve the problems
We will continue to add other features to make sure that the data is trained correctly. 

Another step we would need to continue to do is to see the impact that each feature has on the accuracy score and determine if there is a feature that isn't needed or if we include more features to help push the accuracy score up

## Graphs

These graphs were created with tableau and with the raw dataframe and will be updated with the final clean data. These graphs help us to determine some of the cleaning that needs to be done. 

#### Price vs. Square Feet
![latest price vs square feet](https://user-images.githubusercontent.com/85451089/141713227-2d02c88f-6f7e-4203-9e5f-d4bcfe14c14b.png)

The price vs the square feet scatter plot shows that there is a positive correlation between the living area square footage of the home and the effect it has on the price. There are several outliers and one major one that could be a typo. Getting rid of these outliers could possibly help increase the accuracy of our machine learning model.

#### Year Built and Count
![Screenshot 2021-11-14 202915](https://user-images.githubusercontent.com/85451089/141713593-a51f9065-b597-449f-b658-47009890c0a1.png)

In this page there are two graphs. The first one describes how many houses were built per year and the bottom graph is the sum of the prices for the homes sold on that year. These two graphs seem to line up pretty well which is a small indication that there isn't a huge price difference in the price per house.

#### Location Vs. Price
![Screenshot 2021-11-14 201944](https://user-images.githubusercontent.com/85451089/141714098-64ad456b-4166-4f06-a753-a2b99ef3a32f.png)

The location vs price chart shows the places where there are more expensive homes. Because of the large dataset we can see that there are plenty of homes in the area. The larger and darker the bubble the higher price there is. 
