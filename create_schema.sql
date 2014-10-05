CREATE SCHEMA `class_scheduler`;

CREATE TABLE USER

( ID INT NOT NULL AUTO_INCREMENT,

 NAME VARCHAR(50),

 EMAIL VARCHAR(50),

 PASSWORD VARCHAR(100),

 TRACK VARCHAR(50),

 SCHOOL VARCHAR(50),

 PRIMARY KEY(ID)

);

CREATE TABLE PREFERENCE

(

 ID INT NOT NULL AUTO_INCREMENT,

 TYPE VARCHAR(50),

 VALUE VARCHAR(50),

 PRIMARY KEY(ID)

 );

CREATE TABLE USER_PREFERENCE

(

 ID INT NOT NULL AUTO_INCREMENT,

 USER_ID INT,

 PREFERENCE_ID INT,

 PRIMARY KEY(ID),

 FOREIGN KEY(USER_ID) REFERENCES USER(ID),

 FOREIGN KEY(PREFERENCE_ID) REFERENCES PREFERENCE(ID)

);

CREATE TABLE COURSE

(

 ID INT NOT NULL AUTO_INCREMENT,

 COURSECODE VARCHAR(20),

 COURSENAME VARCHAR(50),

 PROFESSOR VARCHAR(50),

 STARTTIME DATE,

 ENDTIME DATE,

 DAYS VARCHAR(10),

 INTAKE_COUNT INT,

 AVAILABILITY INT,

 CLASS_LEVEL VARCHAR(50),

 CLASS_CREDITS INT,

 PRIMARY KEY(ID)

);

CREATE TABLE USER_COURSE

(

 ID INT NOT NULL AUTO_INCREMENT,

 USER_ID INT,

 COURSE_ID INT,

 SEMESTER INT,

 PRIMARY KEY(ID),

 FOREIGN KEY(USER_ID) REFERENCES USER(ID),

 FOREIGN KEY(COURSE_ID) REFERENCES COURSE(ID)

);