# Segment - 1
### Responsibility for Segment - 1
I am resposnsible for Intial cleaning of US_Accidents CSV file for DtaaBase.
In [Cleaning jupyter notebook]() I have divided the file in different tables and kept "ID" column as primary key.[ERD file]()
I am also responsible for ERD for database and created DDL(Data definition Language) for tables in our Database. [DDL Query]()

### Approach for cleaning
- First CSV file is uploaded in Dataframe and then check all the columns for null values and unique values.
- "ID" column has non null and unique values .
- "End-Ltd" and "End- Lng" has 70% null values  and are not required for ML.
- There are many columns which are repatitative values like for weather condition there are wind_speed,humidity.Precipitation etc. So I kept weather_condition column which consilidates all sorts of weather conditions.Same is for accident time,Source etc.
- nunique(),isnull().sum(),drop() etc functions are used to clean data.

### Approach for Database
- We are using Postgres Database for tables .
-"ID" column has non null and unique values so I have kept it as Primary Key and other tables are connected to table as Foreign key "ID".
- There are following tables in DB :
    1. Accident_Severity : It has 2 columns "ID" as PK and "Severity"
    2. Accident_Report_Source  : This table has dta about source of Accident and " ID" is FK .
    3. Accident_Time : This table has data about time of accident.
    4. Accident_Location : This table has data for Location where accident occur like Lang.,Latt. ,City and county etc.
    5. Accident_Weather : This table has data about the weather condition during accident.
    6. Accident_Traffic : This table has data about traffic condition at the time of accident occur.
