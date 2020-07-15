--Xem cấu trúc 1  bảng
Describe Sinh_Vien;

--Tạo 1 bảng mới
Create table CHUYEN_KHOA
(
Ma_Khoa char(5) primary key,
Ten_Khoa varchar2(50)
);

--Sửa thông tin trong 1 bảng
Alter table Sinh_Vien
add Mo_Ta varchar2(300);

--Sửa thông tin kích thước của 1 cột
Alter table Sinh_Vien
modify Mo_Ta varchar2(500);

--Xoá 1 cột thông tin trong bảng
Alter table Sinh_Vien
drop column Mo_Ta;

--Xoá bảng
Drop table ORA0320.Phong_Ban

--Tạo ra 1  bảng Phong_Ban
Create table ORA0320.Phong_Ban
(
Ma_Phong number(6) primary key,
Ten_Phong varchar2(50 char),
Dien_thoai varchar(20 char),
Email varchar(50 char),
Dia_Chi varchar2(150 char)
);

Create table Mon_Hoc
(
Ma_MH varchar(10) primary key,
Ten_Mon varchar2(150),
So_Tin_Chi number(3,2)
);

--Thêm 1 cột mới
Alter table SInh_Vien
add Chuyen_Khoa_Id char(5);
--Thiết lập quan hệ giữa bảng Sinh_Vien và Chuyen_Khoa
Alter table Sinh_Vien
add constraint FK_Chuyen_Khoa foreign key(Chuyen_Khoa_Id)
references Chuyen_Khoa(Ma_Khoa);

--Tạo bảng Phòng học
Create table Phong_Hoc
(
Ma_Phong number(6),
Ten_phong varchar2(50),
constraint PK_Phong_Hoc_Id primary key(Ma_Phong)
);

