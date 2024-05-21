/*create database SWP*/
drop database SWP

drop table Student
drop table Account


use SWP
-- Table for Student
CREATE TABLE Student (
    rollName VARCHAR(50) PRIMARY KEY,
    fullname NVARCHAR(100),
    campus VARCHAR(100),
    phoneNumber VARCHAR(50),
    gender int,
    term VARCHAR(50),
    balance DECIMAL(10, 2),
   
)


-- Table for Account
CREATE TABLE Account (
	gmail VARCHAR(100) PRIMARY KEY,
    rollName VARCHAR(50),
    password VARCHAR(50),
	role int,
    FOREIGN KEY (rollName) REFERENCES Student(rollName)
);

