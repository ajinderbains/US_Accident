Create table Accident_Severity
(id varchar Primary key ,
Severity Varchar);

Create table Accident_Time
(id varchar  ,
Severity Varchar,
Foreign key(ID) references Accident_Severity(ID)
);

Create Table Accident_Location
(id varchar  ,
Start_Lat float,
 Start_lng float,
 Side varchar,
 City varchar,
 County varchar,
Foreign key(ID) references Accident_Severity(ID)
);

Create table Accident_Weather
(id varchar  ,
Weather_Condition Varchar,
 Visibility float,
 Wind_Speed float,
Foreign key(ID) references Accident_Severity(ID)
);

Create table Accident_Report_Source
(id varchar  ,
Source Varchar,
Foreign key(ID) references Accident_Severity(ID)
);

Create table Accident_Traffic
(id varchar  ,
Bump boolean,
 Crossing boolean,
Give_Way boolean,
Junction boolean,
No_Exit boolean,
Railway boolean,
Roundabout boolean,
Station boolean,
Stop boolean,
Traffic_Calming boolean,
Traffic_Signal boolean,
Turning_Loop boolean,
Foreign key(ID) references Accident_Severity(ID)
);

