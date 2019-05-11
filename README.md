#ETL Group Project Report


##Extract: your original data sources and how the data was formatted (CSV, JSON, MySQL, etc).

Kaggle: 
(SF Health Department records for restaurant inspections:CSV)
https://www.kaggle.com/datasf/sf-restaurant-inspection-scores#Restaurant_Scores_-_LIVES_Standard.csv

(~154k Rows of Inspections Data:CSV)
https://www.kaggle.com/chicago/chi-restaurant-inspections

##Transform: what data cleaning or transformation was required.

-Loaded CSV data to pandas dataframe
-Created a new dataframe from selected columns of each of the files we loaded
-Created my SQL database and tables
-Created connections in jupyter notebook
-Transformed pandas dataframe into tables in MySQL database

##Load: the final database, tables/collections, and why this was chosen as well as your final data schema.

In the final database we merged both tables to consolidate the data and compare violations from different 
restaurant locations of the same business. Then we created a visualization of our schema(see Schema_Visualization.png). 
