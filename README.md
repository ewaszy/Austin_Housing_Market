# Final_Project

# Presentation: 
Link to presentation in google docs: https://docs.google.com/presentation/d/1X4kUUQtXJBwRYs9fdDZ3aNhqrs_Ju5XA_OfNkK-1y8Y/edit?usp=sharing

## Topic: Changes in the Austin Real Estate Market

## Reason why we selected our topic: 

Austin is turning into one of the most expensive real estate markets in the country. Many large tech companies, including Elon Musk's SpaceX, are establishing new locations in the capital of Texas. Growth in the tech industry, coupled with the Covid-19 pandemic, has attracted an influx of out-of-state buyers from metropolitan areas in California who can afford to pay a significant amount over the asking price. From 2020 to 2021, this migration has dramatically decreased the supply of homes for sale, creating an unbalanced market in favor of sellers that is hard for local Austinites to compete with. The lack of inventory has caused the median sales price of a home in Austin rise from 327,000 to 465,000 while the median family income has only increased from 96,600 to 98,900 (1). The median price of a home in Austin is now about 5x the median family income. The benchmark of "luxury" real estate prices is now the standard for regular, non-luxury neighborhoods. Our team chose to investigate this topic to understand future trends in the Austin housing market. 

(1) https://www.austinmonitor.com/stories/2021/06/home-prices-in-austin-rose-100000-in-six-months-when-will-the-surge-end/


## Description of source data: 

The data we have selected to use was sourced from Kaggle (https://www.kaggle.com/ericpierce/austinhousingprices). 

This dataset is in CSV format and contains 15,171 home listings that were scraped from the web in January 2021 by Eric Pierce. There are 45 variables included in the dataset. 

For our analysis, we will be focusing attributes the describe the location, price, time of sale, and size: 
* Id: The Zillow Property ID as a unique identifier 
* Zipcode: The 5-digit zipcode that the listing in located in
* Address
* Latitude
* Longitude
* Latest Price: The most recent available price at time of data acquisition
* Latest Sale Month
* Latest Sale Year
* Living Area Square Feet
* Number of Bedrooms
* Number of Bathrooms
* Year Built
* Age of House
* Price per sq ft

## Question we hope to answer with our data: What is the median price of a home for each neighborhood in Austin, TX?
Using the data we have available, we hope to use our machine learning model to predict the value of a home in real time. This was created for anyone who is interested in putting their house up for sale in Austin, TX and wants to know the current estimated sale price.

## Description of DataExploration Phase
The dataset we have chosen contains over 15 thousand home listings with 46 columns of data. We used Pandas in Jupyter notebook to carefully inspect and clean the raw dataset. First, the data types and column names were inspected. Any listing that was not located in ???Austin??? within the ???city??? column was removed. Based on column names and data types, 11 columns (variables) were selected (12 including the unique identifier) for analysis. A new dataframe (austin_df) was created. Duplicates for zpid (unique identifier) and address were found and removed. The dataset did not contain any null values. Two additional columns were calculated: Age of home (years) and price per square foot. Data types were checked again; latestPrice, livingAreaSqFt, and price_sqft were transformed into whole integers from decimals. Boxplots of each numeric variable were created to identify and drop necessary outliers. 

## Description of Analysis Phase
Descriptve statistics were generated for the following attributes: 

Year 
* Number of homes sold for each year category
* Number of homes sold per month by year
* Average selling price for each year 
* Average selling price for each month by year

Location
* Number of homes sold in each zipcode
* Average price by zip code

Home Attributes
* Year built / Age of home 
* Price per square foot 
* Average price per square foot by zip code
* Average price per square foot by year


# GitHub:

## Description of Communication Protocols: Technologies Used



## Data Cleaning and Analysis

Data cleaning and analysis will be performed using Pandas in Jupyter Notebook.


## Database
SQL is the database we intend to use to house the database. We will use SQL to display the tables made in Pandas and Python in a concise way that clearly shows the relationships between the columns. We have created one main table and four smaller tables to display our data. The data does not have the data from the dataframe, but for refernce purposes we have included photos of the tables. 


### Tables

The first main table, named "Austin_Housing_Market???, includes the entire cleaned data set. This is the dataset that is used in the MLM, and that is tested. 
![Screen Shot 2021-11-21 at 10 53 43 PM](https://user-images.githubusercontent.com/86619648/142803407-3534eff6-3c0e-4f27-b92d-5bd93a538097.png)


The ???Features??? table displays the descriptive features of the houses, such as the year they were built, the number of bathrooms and bedrooms and the square footage of the living area. 
![image](https://user-images.githubusercontent.com/86619648/142803472-aebb1b9c-99cc-47d4-b81e-831f920a5408.png)


The ???Location??? table displays the locater features of these houses such as the latitude and the longitude. 
![image](https://user-images.githubusercontent.com/86619648/142803510-061fa2b1-87d3-420b-a679-f8be3ca146e2.png)


The "Price" table was created by joining the "Austin_Housing_Market??? table and the "Location" table. This table displays the most recent price a house was sold at with its' corresponding street address. 
![image](https://user-images.githubusercontent.com/86619648/142803538-b550ad3c-3afd-41da-bd9b-f0bc43bd19c9.png)


Finally, the "Saletime" table was also created by joining the "Austin_Housing_Market??? table and the "Location" table. This table displays the most recent month and year that a house was sold. 
![image](https://user-images.githubusercontent.com/86619648/142803577-b7b06267-f943-457a-95b3-1f738581641f.png)


All these features will be tested and used by the MLM to predict the future housing prices. 



# Machine Learning

SciKitLearn is the ML library we'll be using to create a classifier. Our training and testing setup is 80% training and 20% testing. The testing and training data will contain 7 features based on location, price, time of sale, and size. The goal is to take the 7 features as the target of the training data to accurately retrieve the target, latestPrice. 

### Dashboard

In addition to using a Flask template, we will also integrate D3.js for a fully functioning and interactive dashboard. It will be hosted on Tableau.



## Machine Learning Models

#### Decision Trees
In order to get a high accuracy score with a decision tree model we needed to create multiple bins for which the prices would fall into. To do this we took att the house prices under $1,000,000 and put them into ten different bins. Each bin was $100,000. From there we went ahead and and ran the decision tree model and received an extremely high accuracy score over 92%. After careful consideration we realized that this does not answer the question of how much is your home worth in Austin, and therefore tried other models. 

#### Linear Regression 
Next we tried linear regression as it would respond with an actual number per house price as opposed to just putting each house into a bin. This however provided us with a low accuracy score under 30% and therefore we decided to try one more option.

#### Multiple Linear Regression
The next method we tried was multiple linear regression in which we received 86% accuracy score. This was really high compared to the linear regression. With multiple linear regression we were able to take all the features into consideration and therefore get a much higher score than with the linear regression. We decided that this would be the model that we will use for the analysis.

### Next steps 
In order to make our model more accurate and improve it we would take a look at the effect each feature has on the price of the home and determine if it would help to possibly get rid of some features. Another step I would like to take in the future is to use Flask and put this model into a web format.


## Graphs

We used Tableau to create interactive visuals of our cleaned data.

The link to the Dashboard can be found here: 
https://public.tableau.com/views/CountofListingsperZipcode/AustinHousingMarket?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link


The graphs below were created with the raw dataframe. These graphs helped determine some of the cleaning that needed to be done. 

#### Price vs. Square Feet

![latest price vs square feet](https://user-images.githubusercontent.com/85451089/141713227-2d02c88f-6f7e-4203-9e5f-d4bcfe14c14b.png)

The price vs the square feet scatter plot shows that there is a positive correlation between the living area square footage of the home and the effect it has on the price. There are several outliers and one major one that could be a typo. Getting rid of these outliers could possibly help increase the accuracy of our machine learning model.

#### Year Built and Count

![Screenshot 2021-11-14 202915](https://user-images.githubusercontent.com/85451089/141713593-a51f9065-b597-449f-b658-47009890c0a1.png)

In this page there are two graphs. The first one describes how many houses were built per year and the bottom graph is the sum of the prices for the homes sold on that year. These two graphs seem to line up pretty well which is a small indication that there isn't a huge price difference in the price per house.

#### Location Vs. Price
![Screenshot 2021-11-14 201944](https://user-images.githubusercontent.com/85451089/141714098-64ad456b-4166-4f06-a753-a2b99ef3a32f.png)

The location vs price chart shows the places where there are more expensive homes. Because of the large dataset we can see that there are plenty of homes in the area. The larger and darker the bubble the higher price there is. 
