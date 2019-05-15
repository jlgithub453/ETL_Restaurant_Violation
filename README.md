# ETL Group Project Report


## Extract: your original data sources and how the data was formatted (CSV, JSON, MySQL, etc).

Kaggle: 
(SF Health Department records for restaurant inspections:CSV)
https://www.kaggle.com/datasf/sf-restaurant-inspection-scores#Restaurant_Scores_-_LIVES_Standard.csv

(~154k Rows of Inspections Data:CSV)
https://www.kaggle.com/chicago/chi-restaurant-inspections

## Transform: what data cleaning or transformation was required.

-Loaded CSV data to pandas dataframe
-Created a new dataframe from selected columns of each of the files we loaded
-Created my SQL database and tables
-Created connections in jupyter notebook
-Transformed pandas dataframe into tables in MySQL database

## Load: the final database, tables/collections, and why this was chosen as well as your final data schema.

In the final database we merged both tables to consolidate the data and compare violations from different 
restaurant locations of the same business. Then we created a visualization of our schema(see Schema_Visualization.png). 

We tried to link the tables in our visualization of schema by using a foreign key but the only vairables that matched were our restaurant names that were not uniquely identifiable in each table. so we couldn't utilize a foreign key to make our visualization more appealing.

The reason we chose these datasets was pretty simple. It was the only two datasets we could find with relatable data. These data sets provide information about restaurant violations in two different cities, SF and Chicago. We were able to see which restaurants passed and failed their inspections.
