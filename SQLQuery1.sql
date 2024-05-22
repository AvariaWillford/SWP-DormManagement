/*create database SWP*/
drop database SWP

drop table Student
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
insert into Admin
values('admin', 'admin')


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