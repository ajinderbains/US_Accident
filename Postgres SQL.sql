CREATE TABLE accident_severity (
    ID VARCHAR, 
    Severity VARCHAR,
    PRIMARY KEY (ID)
);

CREATE TABLE accident_time (
    ID VARCHAR, 
FOREIGN KEY (ID) REFERENCES accident_severity (ID)
);

CREATE TABLE accident_location (
    ID VARCHAR, 
    Start_Lat FLOAT,
    Start_Lng FLOAT,
    Side VARCHAR,
    City VARCHAR,
    County VARCHAR,
FOREIGN KEY (ID) REFERENCES accident_severity (ID)
);

CREATE TABLE accident_weather (
    ID VARCHAR, 
    Visibility FLOAT,
    Wind_Speed FLOAT,
    Weather VARCHAR,
FOREIGN KEY (ID) REFERENCES accident_severity (ID)
);

CREATE TABLE accident_report_source (
    ID VARCHAR, 
    Source VARCHAR,
FOREIGN KEY (ID) REFERENCES accident_severity (ID)
);

CREATE TABLE accident_traffic (
    ID VARCHAR, 
    Bump BOOLEAN,
    Crossing BOOLEAN,
    Give_Way BOOLEAN,
    Junction BOOLEAN,
    No_Exit BOOLEAN,
    Railway BOOLEAN,
    Roundabout BOOLEAN,
    Station BOOLEAN,
    Stop_Sign BOOLEAN,
    Calming BOOLEAN,
    Signal BOOLEAN,
    Turn_Loop BOOLEAN,
FOREIGN KEY (ID) REFERENCES accident_severity (ID)
);
