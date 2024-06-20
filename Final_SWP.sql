
CREATE TABLE dorm (
    dormID INT IDENTITY(1,1),
    dormName VARCHAR(10),
    PRIMARY KEY (dormID)
);
insert into dorm
values('Dorm A'),
('Dorm B'),
('Dorm C'),
('Dorm D'),
('Dorm E');

-- Create the 'role' table
CREATE TABLE role (
    roleID INT IDENTITY(1,1) PRIMARY KEY,
    roleName VARCHAR(50) UNIQUE
);
insert into role
values('admin'),
('normalStudent'),
('dormResident');

-- Create the 'Users' table
CREATE TABLE Users (
    userID INT IDENTITY(1,1) PRIMARY KEY,
    rollName VARCHAR(50),
    fullName NVARCHAR(100),
    campus NVARCHAR(100),
    phoneNumber VARCHAR(20),
    gender NVARCHAR(10),
    term VARCHAR(20),
    balance DECIMAL(9, 2),
    gmail VARCHAR(100),
    roleID INT,
    FOREIGN KEY (roleID) REFERENCES role(roleID)
);
INSERT INTO Users (rollName, fullName, campus, phoneNumber, gender, term, balance, gmail, roleID)
VALUES
('HE181456', N'Phạm Trần Thành Trung', N'Hòa Lạc', '0987654321', 'Nam', 'Spring 2023', 0, 'trungptthe181456@fpt.edu.vn', 2),
('HE186338', N'Trần Ngọc Minh', N'Hòa Lạc', '0987654321', 'Nam', 'Spring 2023', 0, 'minhtnhe186338@fpt.edu.vn', 2),
('HE186339', N'Nguyễn Thị Lan Anh', N'Cần Thơ', '0123456789', N'Nữ', 'Fall 2022', 0, 'anhntlhe186339@fpt.edu.vn', 2),
('HE186340', N'Lê Văn Đức', N'Đà Nẵng', '0987654322', 'Nam', 'Summer 2023', 0, 'duclvhe186340@fpt.edu.vn', 2),
('HE186341', N'Trần Thị Hương', N'Quy Nhơn', '0123456788', N'Nữ', 'Spring 2023', 0, 'huongtthe186341@fpt.edu.vn', 2),
('HE186342', N'Nguyễn Văn An', N'Hòa Lạc', '0912345678', 'Nam', 'Fall 2022', 0, 'annvhe186342@fpt.edu.vn', 2),
('HE186343', N'Trần Thị Linh', N'Cần Thơ', '0987654323', N'Nữ', 'Spring 2023', 0, 'linhtthe186343@fpt.edu.vn', 2),
('HE186344', N'Lê Hoàng Anh', N'Đà Nẵng', '0912345679', 'Nam', 'Summer 2023', 0, 'anhlhhe186344@fpt.edu.vn', 2),
('HE186345', N'Phạm Thị Hồng', N'Quy Nhơn', '0987654324', N'Nữ', 'Fall 2022', 0, 'hongptphe186345@fpt.edu.vn', 2),
('HE186346', N'Võ Minh Khôi', N'Hòa Lạc', '0912345680', 'Nam', 'Spring 2023', 0, 'khoivmhe186346@fpt.edu.vn', 2),
('', 'admin', '', '0123456789', 'Nam', '', 0, 'quanlydomfpt@gmail.com', 1)
;

-- Create the 'room' table
CREATE TABLE room (
    roomID INT IDENTITY(1,1) PRIMARY KEY,
	roomName Varchar(20),
    dormID INT,
    status INT,
    roomType NVARCHAR(50),
    FOREIGN KEY (dormID) REFERENCES dorm(dormID)
);
INSERT INTO room (roomName, dormID, status, roomType)
VALUES
('A101', 1, 0, '6 beds'), ('A102', 1, 0, '4 beds'), ('A103', 1, 0, '3 beds'), ('A104', 1, 0, '6 beds'), ('A105', 1, 0, '4 beds'),
('A106', 1, 0, '3 beds'), ('A107', 1, 0, '6 beds'), ('A108', 1, 0, '4 beds'), ('A109', 1, 0, '3 beds'), ('A110', 1, 0, '6 beds'),
('B101', 2, 0, '6 beds'), ('B102', 2, 0, '4 beds'), ('B103', 2, 0, '3 beds'), ('B104', 2, 0, '6 beds'), ('B105', 2, 0, '4 beds'),
('B106', 2, 0, '3 beds'), ('B107', 2, 0, '6 beds'), ('B108', 2, 0, '4 beds'), ('B109', 2, 0, '3 beds'), ('B110', 2, 0, '6 beds'),
('C101', 3, 0, '6 beds'), ('C102', 3, 0, '4 beds'), ('C103', 3, 0, '3 beds'), ('C104', 3, 0, '6 beds'), ('C105', 3, 0, '4 beds'),
('C106', 3, 0, '3 beds'), ('C107', 3, 0, '6 beds'), ('C108', 3, 0, '4 beds'), ('C109', 3, 0, '3 beds'), ('C110', 3, 0, '6 beds'),
('D101', 4, 0, '6 beds'), ('D102', 4, 0, '4 beds'), ('D103', 4, 0, '3 beds'), ('D104', 4, 0, '6 beds'), ('D105', 4, 0, '4 beds'),
('D106', 4, 0, '3 beds'), ('D107', 4, 0, '6 beds'), ('D108', 4, 0, '4 beds'), ('D109', 4, 0, '3 beds'), ('D110', 4, 0, '6 beds'),
('E101', 5, 0, '6 beds'), ('E102', 5, 0, '4 beds'), ('E103', 5, 0, '3 beds'), ('E104', 5, 0, '6 beds'), ('E105', 5, 0, '4 beds'),
('E106', 5, 0, '3 beds'), ('E107', 5, 0, '6 beds'), ('E108', 5, 0, '4 beds'), ('E109', 5, 0, '3 beds'), ('E110', 5, 0, '6 beds');


-- Create the 'Bed' table
CREATE TABLE Bed (
    bedID INT IDENTITY(1,1),
    status BIT,
    price DECIMAL(9, 2),
    roomID INT,
    PRIMARY KEY (bedID),
    FOREIGN KEY (roomID) REFERENCES room(roomID)
);

INSERT INTO Bed (status, price, roomID)
SELECT 0, 
       CASE 
           WHEN r.roomType = '6 beds' THEN 850
           WHEN r.roomType = '4 beds' THEN 1050
           WHEN r.roomType = '3 beds' THEN 1150
       END,
       r.roomID
FROM room r
CROSS JOIN
(
    SELECT 1 AS n
    UNION ALL SELECT 2
    UNION ALL SELECT 3
    UNION ALL SELECT 4
    UNION ALL SELECT 5
    UNION ALL SELECT 6
) AS nums
WHERE nums.n <= 
    CASE 
        WHEN r.roomType = '6 beds' THEN 6
        WHEN r.roomType = '4 beds' THEN 4
        WHEN r.roomType = '3 beds' THEN 3
    END;

-- Create the 'DormResident' table
CREATE TABLE DormResident (
    checkInDate DATETIME,
    userID INT IDENTITY(1,1),
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
    billID INT IDENTITY(1,1),
    dayCreate DATETIME,
    PRIMARY KEY (billID),
    FOREIGN KEY (roomID) REFERENCES room(roomID)
);

-- Create the 'News' table
CREATE TABLE News (
    newsName NVARCHAR(100),
    newsDetail NVARCHAR(MAX),
    time VARCHAR(10),
    picture NVARCHAR(MAX),
    postBy NVarchar(50),
    newsID INT IDENTITY(1,1) PRIMARY KEY,
    
);

-- Create the 'Requests' table
CREATE TABLE Requests (
    requestID INT IDENTITY(1,1),
    requestType NVARCHAR(100),
    rollName VARCHAR(20),
    requestDetail NVARCHAR(MAX),
    userID INT,
    PRIMARY KEY (requestID),
    FOREIGN KEY (userID) REFERENCES DormResident(userID)
);