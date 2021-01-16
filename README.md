
# Group_Project



![Capture50](https://user-images.githubusercontent.com/68204195/104792383-115ad680-5753-11eb-907f-656fd3d4a974.PNG)



Introduction:

The main goal of this project is for our group to collaborate and use the valuable skills we have learned. We will be utilizing remote collaboration, creating a database, cleaning, and extracting the relevant data, using machine learning, and creating a dashboard to display our data. Some of the programs we will be using Postgres SQL, Python, Jupyter Notebook and Tableau during the process. This topic was selected to find patterns in accident occurrence. Using our skills, we can aid in the prediction of an accident, hotspot information, roadway, and weather condition to help avoid fatality accidents.

Analysis:

When do most accidents occur and why? Analyzing accidents can provide valuable information. With this dataset we will be analyzing and answering this question as well as including information about the weather at the time of the accident, accident severity along with longitude and latitude of the accident location. While analyzing this data we can discern accident frequencies and probabilities of accident occurrence.

About the dataset:

This dataset was chosen because it holds information from February 2016 to June, 2020. The dataset includes information on 3.5 million accidents, from 49 states. Weather types and conditions are also available within the dataset.
The dataset we are using is from https://www.kaggle.com/sobhanmoosavi/us-accidents. The sources of information in the dataset API broadcast by law enforcement agencies, traffic sensors, traffic cameras and the US and state departments of transportation.


Communication:

Our group maintains communication through several channels. We utilized Slack, Zoom meetings and class meetings to strategize, prioritize workloads and problem solve together.

Project Outline:

Introduction

A.	Collaborate on project ideas

B.	Select a dataset and programs to build project

C.	When do most accidents occur and Why?

A.	Dataset Information
1.	sources
2.	accessibility
3.  scalability

B.	Machine Learning
1.	model type
2.	test
3.  accuracy

A.	Database
1.	Parsing
2.	Cleaning
B.	Transforming
1.	creating a csv

C.	Postgresql
1.  Queries
2.	Joins

D.	Visualization
1.	Tableau Dashboard

E.  Challenges
1.  changes that we made

Conclusion
A.	Restate Introduction

B.	Summarize findings

C.	Questions






Database Cleaning


The first CSV file was uploaded in Dataframe and then check all the columns for null values and unique values.
Remove "End-Ltd" and "End- Lng" has 70% null values and are not required for MLachine Learning. Remove repetitative values like for weather condition  such as wind_speed,humidity.Precipitation etc. Keeping only one weather_condition column which consolidates all sorts of weather conditions. The same approach was taken for accident time and Source.



Approach for Database


The ERD 

![CaptureERD](https://user-images.githubusercontent.com/68204195/104792803-9c889c00-5754-11eb-9f65-d9d7fc39e2fb.PNG)


We are using Postgres Database for tables . -"ID" column has non null and unique values so I have kept it as Primary Key and other tables are connected to table as Foreign key "ID".
There are following tables in DB :
Accident_Severity : It has 2 columns "ID" as PK and "Severity"
Accident_Report_Source : This table has dta about source of Accident and " ID" is FK .
Accident_Time : This table has data about time of accident.
Accident_Location : This table has data for Location where accident occur like Lang.,Latt. ,City and county etc.
Accident_Weather : This table has data about the weather condition during accident.
Accident_Traffic : This table has data about traffic condition at the time of accident occur.



Objective for SQL Analysis:


Data is organized and stored in different tables and then these tables are joined and manipulated to find the count of accidents based on different features. I have tried to find the answers for following questions:

What is count of accidents for each Severity type?
What is count of accidents for each accident Reporting Source?
What is count of accidents based on Day and Night?
What is count for accidents for high and low Severity for each weather Condition like Rainy,Cloudy,Foggy,Snow,Wind Speed and Visibility
Following functions are used to generate queries

Joins
Like
Comparison operaters
Count,Max,Min,Avg
IN operator
Results from SQL queries:
Most of the accidents happen are of Severity Level 2 2373210 and Severity level 3 is next highest 998913

Analysis of SQL files
Most of the accident case reported are of Low Severity

Most of accident cases are reported during the Day time

Most of accident cases occur on clear weather conditions.




Machine Learning







Problems:

During this project we encountered several issues. The largest problem we had to solve was sample size. The amount of
data we had was so great that we had to sample it down to keep the Kernel in Jupyter notebook from crashing during the machine
learning portion. We also chose to group severity to make the data easier to read and sort. We had to limit the number of weather conditions
and remove null values. The data had to be sampled severeral times. We ended up with a random sample of 100,000 accidents to draw from.


Conclusion: 

![Best Accuracy](https://user-images.githubusercontent.com/68204195/104792592-b37abe80-5753-11eb-89dc-82c894e3773b.PNG)



With a sample of 100,000 accidents we could discern that there were 5 weather conditions that held the most data. The weather condition that occured
the most was on a clear day. The month that had the most accidents occur was June. Our model accuracy score is highest when weather and time are grouped together. The accuracy score is 96%. 



