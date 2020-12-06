# Group_Project

Segment 1, Machine Learning (Alyse):
For this segment, we decided to use the severity of accidents as our output value (y), and will use the other data columns (as shown in the ERD) as the input values. 

After importing the necessary dependencies, I created read in the csv file and created a pandas dataframe using the values we tentatively plan to use. I dropped the null values and labelled Severity as output and the other columns as X, with the exception of Start_Time, End_Time, City and County. However, these values may be adjusted. 

I then used the pandas get_dummies method to convert the input values to numerical data. Because the values distribution of y is mostly comprised of levels 2 and 3 (out of 1 - 4 severity levels), I used an oversampling method to balance the data for each of the 4 categories. 

In folloiwng weeks, we will split the data and plan to use a classification model with inputs such as weather condition to predict the output. 
