<--Create Database Final_SWP-->
DROP TABLE Requests;
DROP TABLE News;
DROP TABLE roomBill;
DROP TABLE DormResident;
DROP TABLE Bed;
DROP TABLE role;
DROP TABLE room;
DROP TABLE Users;
DROP TABLE dorm;
CREATE TABLE dorm (
    dormID INT,
    dormName VARCHAR(10),
    PRIMARY KEY (dormID)
);

-- Create the 'role' table
CREATE TABLE role (
    roleID INT PRIMARY KEY,
    roleName VARCHAR(50) UNIQUE
);

-- Create the 'Users' table
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
    roleID INT,
    FOREIGN KEY (roleID) REFERENCES role(roleID)
);

-- Create the 'room' table
CREATE TABLE room (
    roomID INT PRIMARY KEY,
    dormID INT,
    status INT,
    roomType VARCHAR(50),
    FOREIGN KEY (dormID) REFERENCES dorm(dormID)
);

-- Create the 'Bed' table
CREATE TABLE Bed (
    bedID INT,
    status BIT,
    price DECIMAL(9, 2),
    roomID INT,
    PRIMARY KEY (bedID),
    FOREIGN KEY (roomID) REFERENCES room(roomID)
);

-- Create the 'DormResident' table
CREATE TABLE DormResident (
    checkInDate DATETIME,
    userID INT,
    checkOutDate DATETIME,
    bedID INT UNIQUE,
    PRIMARY KEY (userID),
    FOREIGN KEY (userID) REFERENCES Users(userID),
    FOREIGN KEY (bedID) REFERENCES Bed(bedID)
);

-- Create the 'roomBill' table
CREATE TABLE roomBill (
    roomID INT,
    numberElecUsage INT,
    numberWaterUsage INT,
    billID INT,
    dayCreate DATETIME,
    PRIMARY KEY (billID),
    FOREIGN KEY (roomID) REFERENCES room(roomID)
);

-- Create the 'News' table
CREATE TABLE News (
    newsName VARCHAR(100),
    newsDetail VARCHAR(MAX),
    time VARCHAR(10),
    picture VARCHAR(MAX),
    postBy Varchar(50),
    newsID INT PRIMARY KEY,
    
);

-- Create the 'Requests' table
CREATE TABLE Requests (
    requestID INT,
    requestType VARCHAR(100),
    rollName VARCHAR(20),
    requestDetail VARCHAR(MAX),
    userID INT,
    PRIMARY KEY (requestID),
    FOREIGN KEY (userID) REFERENCES DormResident(userID)
);