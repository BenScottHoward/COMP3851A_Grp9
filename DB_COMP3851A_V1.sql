-- Author: Ben Howard. Start Date: 18/09/2020. Project: COMP3851A_Grp9_DB
-- Create tables for Student Advisory tool. 

--Drop tables

DROP TABLE Student
DROP TABLE Program
DROP TABLE Course
DROP TABLE Semester


--Create tables




CREATE TABLE Semester (
                       SemID CHAR(3) PRIMARY KEY,
					   SemType VARCHAR (20) NOT NULL
					   );
					   
CREATE TABLE Course (
                     CourseCode CHAR(8) PRIMARY KEY,
					 SemID CHAR(4) NOT NULL,
					 CousreName VARCHAR(20) NOT NULL,
					 AssumedKnw CHAR(8) NOT NULL,
					 PreReq  VARCHAR (20) NOT NULL,
					 FOREIGN KEY (SemID) REFERENCES Semester (SemID) ON  UPDATE CASCADE ON DELETE NO ACTION
			          );

CREATE TABLE Program (
                      ProgID CHAR (8) PRIMARY KEY,
					  CourseCode CHAR (8) NOT NULL,
					  ProgName VARCHAR (20) NOT NULL,
					  UnitsReq INTEGER  NOT NULL,
					  FOREIGN KEY (CourseCode) REFERENCES Course (CourseCode) ON  UPDATE CASCADE ON DELETE NO ACTION
			          );

CREATE TABLE Student (
                      StudentID CHAR (7) PRIMARY KEY,
					  ProgID CHAR (8) NOT NULL,
					  Fname VARCHAR(20) NOT NULL,
					  LName VARCHAR (20) NOT NULL,
					  Address VARCHAR(50) NOT NULL,
					  PhoneNum VARCHAR(20) NOT NULL,
					  StudEmail VARCHAR(50) NOT NULL,
					  UnitsComp INTEGER  NOT NULL,
					  CourseComp CHAR(8),
					  FOREIGN KEY (ProgID) REFERENCES Program (ProgID) ON  UPDATE CASCADE ON DELETE NO ACTION
		             );					  