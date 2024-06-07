/*create database SWP*/
drop database SWP

drop table Bed
drop table Admin


use SWP
-- Table for Account
CREATE TABLE Admin (
	gmail VARCHAR(100) PRIMARY KEY,
    password VARCHAR(50),

    
);
-- Table for Student
CREATE TABLE Student (
    rollName VARCHAR(50) PRIMARY KEY,
    fullname NVARCHAR(100),
    campus NVARCHAR(100),
    phoneNumber VARCHAR(50),
    gender VARCHAR(10),
    term VARCHAR(50),
    balance DECIMAL(10, 2),
	gmail VARCHAR(100),

   
)
CREATE table dorm(
	dormName varchar(10) primary key,

);

create table room(
	roomName varchar(10) primary key,
	dormName varchar(10)
		FOREIGN KEY (dormName) REFERENCES dorm(dormName),

);

CREATE TABLE Bed(
	bedName Varchar(100) primary key,
	status bit,
	price decimal(10,2),
	roomName varchar(10),
	FOREIGN KEY (roomName) REFERENCES room(roomName),

);
create table DormResident(
	rollName varchar(50) unique,
	bedName varchar(100) unique,
	 FOREIGN KEY (rollName) REFERENCES Student(rollName),
	  FOREIGN KEY (bedName) REFERENCES Bed(bedName),
);

create table News(
	newsName varchar(1000) primary key,
	newsDetail varchar(5000),
	time varchar(10),
	day varchar(20),
	picture varchar,
	postBy varchar(20)

);
create table Requests(
	requestType nvarchar(200) primary key,
	rollName varchar(50),
	requestDetail varchar(5000)
	FOREIGN KEY (rollName) REFERENCES DormResident(rollName),
);

insert into Admin
values('admin', 'admin'),
('quanlydomfpt@gmail.com','quanlydomfpt1@')


insert into dorm
values('Dorm A'),
('Dorm B'),
('Dorm C'),
('Dorm D'),
('Dorm E');


INSERT INTO room (roomName, dormName) VALUES
('A101', 'Dorm A'), ('A201', 'Dorm A'), ('A301', 'Dorm A'), ('A401', 'Dorm A'),
('B101', 'Dorm B'), ('B201', 'Dorm B'), ('B301', 'Dorm B'), ('B401', 'Dorm B'),
('C101', 'Dorm C'), ('C201', 'Dorm C'), ('C301', 'Dorm C'), ('C401', 'Dorm C'),
('D101', 'Dorm D'), ('D201', 'Dorm D'), ('D301', 'Dorm D'), ('D401', 'Dorm D'),
('E101', 'Dorm E'), ('E201', 'Dorm E'), ('E301', 'Dorm E'), ('E401', 'Dorm E');


INSERT INTO Bed (bedName, status, price, roomName) VALUES
('no1_A101', 0, 100000, 'A101'), ('no2_A101', 0, 100000, 'A101'), ('no3_A101', 0, 100000, 'A101'), ('no4_A101', 0, 100000, 'A101'),
('no1_A201', 0, 100000, 'A201'), ('no2_A201', 0, 100000, 'A201'), ('no3_A201', 0, 100000, 'A201'), ('no4_A201', 0, 100000, 'A201'),
('no1_A301', 0, 100000, 'A301'), ('no2_A301', 0, 100000, 'A301'), ('no3_A301', 0, 100000, 'A301'), ('no4_A301', 0, 100000, 'A301'),
('no1_A401', 0, 100000, 'A401'), ('no2_A401', 0, 100000, 'A401'), ('no3_A401', 0, 100000, 'A401'), ('no4_A401', 0, 100000, 'A401'),
('no1_B101', 0, 100000, 'B101'), ('no2_B101', 0, 100000, 'B101'), ('no3_B101', 0, 100000, 'B101'), ('no4_B101', 0, 100000, 'B101'),
('no1_B201', 0, 100000, 'B201'), ('no2_B201', 0, 100000, 'B201'), ('no3_B201', 0, 100000, 'B201'), ('no4_B201', 0, 100000, 'B201'),
('no1_B301', 0, 100000, 'B301'), ('no2_B301', 0, 100000, 'B301'), ('no3_B301', 0, 100000, 'B301'), ('no4_B301', 0, 100000, 'B301'),
('no1_B401', 0, 100000, 'B401'), ('no2_B401', 0, 100000, 'B401'), ('no3_B401', 0, 100000, 'B401'), ('no4_B401', 0, 100000, 'B401'),
('no1_C101', 0, 100000, 'C101'), ('no2_C101', 0, 100000, 'C101'), ('no3_C101', 0, 100000, 'C101'), ('no4_C101', 0, 100000, 'C101'),
('no1_C201', 0, 100000, 'C201'), ('no2_C201', 0, 100000, 'C201'), ('no3_C201', 0, 100000, 'C201'), ('no4_C201', 0, 100000, 'C201'),
('no1_C301', 0, 100000, 'C301'), ('no2_C301', 0, 100000, 'C301'), ('no3_C301', 0, 100000, 'C301'), ('no4_C301', 0, 100000, 'C301'),
('no1_C401', 0, 100000, 'C401'), ('no2_C401', 0, 100000, 'C401'), ('no3_C401', 0, 100000, 'C401'), ('no4_C401', 0, 100000, 'C401'),
('no1_D101', 0, 100000, 'D101'), ('no2_D101', 0, 100000, 'D101'), ('no3_D101', 0, 100000, 'D101'), ('no4_D101', 0, 100000, 'D101'),
('no1_D201', 0, 100000, 'D201'), ('no2_D201', 0, 100000, 'D201'), ('no3_D201', 0, 100000, 'D201'), ('no4_D201', 0, 100000, 'D201'),
('no1_D301', 0, 100000, 'D301'), ('no2_D301', 0, 100000, 'D301'), ('no3_D301', 0, 100000, 'D301'), ('no4_D301', 0, 100000, 'D301'),
('no1_D401', 0, 100000, 'D401'), ('no2_D401', 0, 100000, 'D401'), ('no3_D401', 0, 100000, 'D401'), ('no4_D401', 0, 100000, 'D401'),
('no1_E101', 0, 100000, 'E101'), ('no2_E101', 0, 100000, 'E101'), ('no3_E101', 0, 100000, 'E101'), ('no4_E101', 0, 100000, 'E101'),
('no1_E201', 0, 100000, 'E201'), ('no2_E201', 0, 100000, 'E201'), ('no3_E201', 0, 100000, 'E201'), ('no4_E201', 0, 100000, 'E201'),
('no1_E301', 0, 100000, 'E301'), ('no2_E301', 0, 100000, 'E301'), ('no3_E301', 0, 100000, 'E301'), ('no4_E301', 0, 100000, 'E301'),
('no1_E401', 0, 100000, 'E401'), ('no2_E401', 0, 100000, 'E401'), ('no3_E401', 0, 100000, 'E401'), ('no4_E401', 0, 100000, 'E401');


INSERT INTO Student (rollName, fullname, campus, phoneNumber, gender, term, balance, gmail) VALUES
('HE186338', 'Tran Ngoc Minh', N'Hòa Lạc', '0123456789', 'Male', 'Term 1', 0.00, 'minhtnHE186338@fpt.edu.vn'),
('HE186339', 'Nguyen Thi Lan', N'Cần Thơ', '0123456790', 'Female', 'Term 2', 0.00, 'lanntHE186339@fpt.edu.vn'),
('HE186340', 'Le Van Binh', N'Hồ Chí Minh', '0123456791', 'Male', 'Term 3', 0.00, 'binhlvHE186340@fpt.edu.vn'),
('HE186341', 'Pham Quoc Tuan', N'Đà Nẵng', '0123456792', 'Male', 'Term 1', 0.00, 'tuanpqHE186341@fpt.edu.vn'),
('HE186342', 'Doan Hoang Anh', N'Quy Nhơn', '0123456793', 'Male', 'Term 2', 0.00, 'anhdhHE186342@fpt.edu.vn'),
('HE186343', 'Hoang Minh Chau', N'Hòa Lạc', '0123456794', 'Female', 'Term 3', 0.00, 'chauhmHE186343@fpt.edu.vn'),
('HE186344', 'Nguyen Kim Dung', N'Cần Thơ', '0123456795', 'Female', 'Term 1', 0.00, 'dungnkHE186344@fpt.edu.vn'),
('HE186345', 'Tran Van Em', N'Hồ Chí Minh', '0123456796', 'Male', 'Term 2', 0.00, 'emtvHE186345@fpt.edu.vn'),
('HE186346', 'Phan Thi Giang', N'Đà Nẵng', '0123456797', 'Female', 'Term 3', 0.00, 'giangptHE186346@fpt.edu.vn'),
('HE186347', 'Vu Hoai Nam', N'Quy Nhơn', '0123456798', 'Male', 'Term 1', 0.00, 'namvhHE186347@fpt.edu.vn'),
('HE186348', 'Bui Thi Hoa', N'Hòa Lạc', '0123456799', 'Female', 'Term 2', 0.00, 'hoabtHE186348@fpt.edu.vn'),
('HE186349', 'Le Thanh Hung', N'Cần Thơ', '0123456700', 'Male', 'Term 3', 0.00, 'hungleHE186349@fpt.edu.vn'),
('HE186350', 'Nguyen Huy Hoang', N'Hồ Chí Minh', '0123456701', 'Male', 'Term 1', 0.00, 'hoangnhHE186350@fpt.edu.vn'),
('HE186351', 'Tran Thi Lan Huong', N'Đà Nẵng', '0123456702', 'Female', 'Term 2', 0.00, 'huongttlHE186351@fpt.edu.vn'),
('HE186352', 'Pham Tuan Kiet', N'Quy Nhơn', '0123456703', 'Male', 'Term 3', 0.00, 'kietptHE186352@fpt.edu.vn'),
('HE186353', 'Doan Thi My Linh', N'Hòa Lạc', '0123456704', 'Female', 'Term 1', 0.00, 'linhdmHE186353@fpt.edu.vn'),
('HE186354', 'Hoang Van Manh', N'Cần Thơ', '0123456705', 'Male', 'Term 2', 0.00, 'manhhvHE186354@fpt.edu.vn'),
('HE186355', 'Nguyen Thi Thu Phuong', N'Hồ Chí Minh', '0123456706', 'Female', 'Term 3', 0.00, 'phuongnttHE186355@fpt.edu.vn'),
('HE186356', 'Le Van Quan', N'Đà Nẵng', '0123456707', 'Male', 'Term 1', 0.00, 'quanlvHE186356@fpt.edu.vn'),
('HE186357', 'Pham Thi Yen', N'Quy Nhơn', '0123456708', 'Female', 'Term 2', 0.00, 'yenptHE186357@fpt.edu.vn');