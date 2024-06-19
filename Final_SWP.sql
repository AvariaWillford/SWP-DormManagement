<--Create Database Final_SWP-->
drop table dorm
drop table room
drop table roomBill
drop table Bed
drop table users
drop table dormresident
drop table news 
drop table requests
drop table role

CREATE TABLE dorm (
    dormID INT,
    dormName VARCHAR(10),
    PRIMARY KEY (dormID)
);

CREATE TABLE room (
    roomID INT primary key,
    dormID INT,
	status int,
    roomType VARCHAR(50),
    FOREIGN KEY (dormID) REFERENCES dorm(dormID)
);

CREATE TABLE roomBill (
    roomID INT,
    numberElecUsage INT,
    numberWaterUsage INT,
    billID INT,
    dayCreate DATETIME,
    PRIMARY KEY (billID),
    FOREIGN KEY (roomID) REFERENCES room(roomID)
);
CREATE TABLE Users (
    userID INT PRIMARY KEY,
    rollName VARCHAR(50),
    fullName VARCHAR(100),
    campus VARCHAR(100),
    phoneNumber VARCHAR(20),
    gender VARCHAR(10),
    term VARCHAR(20),
    balance DECIMAL(9, 2),
    gmail VARCHAR(100),
	roleID int
);
CREATE TABLE Bed (
    bedID INT,
    status BIT,
    price DECIMAL(9, 2),
    roomID INT,
    PRIMARY KEY (bedID),
    FOREIGN KEY (roomID) REFERENCES room(roomID),
	    
);
CREATE TABLE DormResident (
    checkInDate DATETIME,
    userID INT,
    checkOutDate DATETIME,
	bedID int unique,
    PRIMARY KEY (userID),
	FOREIGN KEY (userID) REFERENCES Users(userID),
	FOREIGN KEY (bedID) REFERENCES Bed(bedID),
);

CREATE TABLE News (
    newsName VARCHAR(100),
    newsDetail VARCHAR(MAX),
    time VARCHAR(10),
    picture VARCHAR(MAX),
    postBy Varchar(50),
    newsID INT PRIMARY KEY
	FOREIGN KEY (postBy) REFERENCES Users(userID)
);


CREATE TABLE Requests (
    requestID INT,
    requestType VARCHAR(100),
    rollName varchar(20),
    requestDetail VARCHAR(MAX),
	userID int,
    PRIMARY KEY (requestID),
    FOREIGN KEY (userID) REFERENCES DormResident(userID)
);

CREATE TABLE role (
    roleID INT PRIMARY KEY,
    roleName VARCHAR(50) unique
	FOREIGN KEY (roleID) REFERENCES Users(userID)
);