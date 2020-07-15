-- Bài tập 1:
--Tạo các bảng cơ sở dữ liệu
--Trường học (Mã trường, Tên trường, điện thoại, email, Địa chỉ, Mã hiệu trưởng)
Create table Truong_Hoc
(
Ma_truong varchar(15) primary key,
Ten_truong varchar2(150),
Dien_thoai varchar(20),
Email varchar(50),
Dia_chi varchar2(250),
Website varchar(250),
Ma_hieu_truong varchar(10)
);
--Khoa (Mã khoa, Tên khoa, Điện thoại, Email, Website, Mã trường, Mã chủ nhiệm khoa)
Create table Khoa
(
Ma_khoa varchar(10) primary key,
Ten_khoa varchar2(150),
Dien_thoai varchar(20),
Email varchar(50),
Website varchar(250),
Ma_truong varchar(10),
Ma_chu_nhiem varchar(10)
);
-- Môn học (Mã môn, Tên môn học, Số tín chỉ, Mã khoa)
Create table Mon_hoc
(
Ma_MH varchar(10) primary key,
Ten_Mon_hoc varchar2(150),
So_tin_chi number(2),
Ma_khoa varchar(10)
);
--Giáo viên (Mã GV, Họ tên, Giới tính, ngày sinh, điện thoại, email, địa chỉ, mã khoa)
Create table Giao_Vien
(
Ma_GV varchar(10) primary key,
Ho_ten varchar2(30),
Gioi_tinh char(1),
Ngay_sinh date,
Dien_thoai varchar(20),
Email varchar(50),
Dia_Chi varchar2(150),
Ma_khoa varchar(10)
);
--Giáo viên và Môn học là quan hệ nhiều - nhiều => Tạo ra 1 bảng trung gian
--GiaoVien_MonHoc(MaGV, MaMH)
Create table GiaoVien_MonHoc
(
Ma_GV varchar(10),
Ma_MH varchar(10),
constraint PK_GiaoVien_MonHoc_Id primary key(Ma_GV, Ma_MH)
);
--Sinh viên (Mã SV, Họ tên, Giới tính, Ngày sinh, điện thoại, email, Địa chỉ, Mã khoa, Mã lớp)
Create table Sinh_Vien
(
Ma_SV varchar(10) primary key,
Ho_Ten varchar(30),
Gioi_tinh char(1),
Ngay_sinh date,
Dien_thoai varchar(20),
Email varchar2(50),
Ma_khoa varchar(10),
Ma_lop varchar(10)
);
--Sinh viên và Môn học là quan hệ M - M => Tạo 1 bảng trung gian để đưa về quan hệ 1-M:
--SinhVien_MonHoc(MaSV, MaMH)
Create table SinhVien_MonHoc
(
Ma_SV varchar(10),
Ma_MH varchar(10),
constraint PK_SinhVien_MonHoc_Id primary key(Ma_SV, Ma_MH)
);
--Lớp học (Mã lớp, Tên lớp, Mã khoa)
Create table Lop_Hoc
(
Ma_lop varchar(10) primary key,
Ten_lop varchar2(50),
Ma_khoa varchar(10),
Ma_Giao_Vien varchar(10)
);
--Quan hệ giữa các bảng:
--Quan hệ giữa Truong và Khoa là 1-M
Alter table Khoa
add constraint FK_TruongHoc_Id foreign key(Ma_truong)
references Truong_Hoc(Ma_Truong);
--Quan hệ giữa Khoa va MonHoc là 1-M
Alter table Mon_Hoc
add constraint FK_Khoa_MonHoc_Id foreign key(Ma_Khoa)
references Khoa(Ma_Khoa);
--Quan hệ giữa Khoa và Giáo viên là 1-M
Alter table Giao_Vien
add constraint FK_Khoa_Id foreign key(Ma_khoa)
references Khoa(Ma_khoa);
--Quan hệ giữa GiaoVien và GiaoVien_MonHoc là 1-M
Alter table GiaoVien_MonHoc
add constraint FK_GiaoVien_MonHoc_GiaoVien_id foreign key(Ma_GV)
references Giao_Vien(Ma_GV);
--Quan hệ giữa MonHoc và GiaoVIen_MonHoc là 1-M
Alter table GiaoVien_MonHoc
add constraint FK_GiaoVien_MonHoc_MonHoc_Id foreign key(Ma_MH)
references Mon_Hoc(Ma_MH);
--Quan hệ giữa Khoa và SinhVien là 1-M
Alter table Sinh_Vien
Add constraint FK_Khoa_SinhVien_Id foreign key(Ma_Khoa)
references Khoa(Ma_khoa);
--Quan hệ giữa Khoa và Lớp là 1-M
Alter table Lop_Hoc
add constraint FK_Khoa_Lop_Id foreign key(Ma_Khoa)
references Khoa(Ma_Khoa);
--Quan hệ giữa SinhVien và SinhVien_MonHoc là 1-M
Alter table SinhVien_MonHoc
add constraint FK_SinhVIen_MonHoc_SinhVien_Id foreign key(Ma_SV)
references Sinh_Vien(Ma_SV);
--Quan hệ giữa MonHoc và SinhVien_MonHoc là 1-M
Alter table SinhVien_MonHoc
add constraint FK_SinhVien_MonHoc_MonHoc_Id foreign key(Ma_MH)
references Mon_Hoc(Ma_MH);
--Quan hệ giữa Lop va SinhVien là 1-M
Alter table Sinh_Vien
Add constraint FK_SinhVien_Lop_Id foreign key(Ma_Lop)
references Lop_Hoc(Ma_Lop);
--Quan he giua Truong hoc va Giao vien
Alter table Truong_hoc
add constraint FK_GiaoVien_Truong_Id foreign key(Ma_hieu_truong)
references Giao_vien(Ma_GV);

--Quan he giua Khoa va Giao vien
Alter table Khoa
add constraint FK_Khoa_GiaoVien_CNKhoa_id foreign key(Ma_Chu_nhiem)
references Giao_Vien(Ma_GV);
