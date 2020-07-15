--1. Thiết kế các bảng
--Tao bang Quoc gia
Create table Quoc_Gia
(
Ma_Quoc_Gia char(5) primary key,
Ten_Quoc_Gia varchar2(30)
);

--Tao bang Hang hoa
Create table Hang_Hoa
(
Ma_Hang varchar(10) primary key,
Ten_hang varchar2(50),
Mo_ta varchar2(250),
Xuat_Xu_Id char(5)
);
--Tao bang Loai khach hang
Create table Loai_Khach_Hang
(
Ma_loai number(2) primary key,
Ten_Loai varchar2(30)
);

--Tao bang Khach hang
Create table Khach_Hang
(
Ma_KH varchar(10) primary key,
Ho_Ten varchar2(30),
Gioi_Tinh char(1),
Ngay_Sinh date,
Dien_Thoai varchar(20),
Email varchar(50),
Dia_Chi varchar2(150),
Loai_Id number(2)
);

--Tao bang Hoa don ban
Create table Hoa_Don_Ban
(
Ma_Hoa_Don varchar(10) primary key,
Ten_hoa_don varchar2(150),
Mo_ta varchar2(500),
Ngay_ban date,
Ma_Khach_Hang varchar(10)
);

--Tao bang Hoa don ban chi tiet
Create table Hoa_Don_Ban_CT
(
Ma_hoa_don varchar(10),
Ma_hang varchar(10),
So_luong number(9),
Gia_ban number(12,2),
constraint PK_HoaDonBan_CT primary key(Ma_hoa_don,Ma_hang)
);

--Tao bang Hoa don mua
Create table Hoa_Don_Mua
(
Ma_Hoa_Don varchar(10) primary key,
Ten_hoa_don varchar2(150),
Mo_ta varchar2(500),
Ngay_mua date
);

--Tao bang Hoa don mua chi tiet
Create table Hoa_Don_Mua_CT
(
Ma_hoa_don varchar(10),
Ma_hang varchar(10),
So_luong number(9),
Gia_mua number(12,2),
constraint PK_HoaDonMua_CT primary key(Ma_hoa_don,Ma_hang)
);

--2. Thiết lập quan hệ giữa các bảng
--Thiet lap quan he giua bang Hang_Hoa va Quoc_Gia
Alter table Hang_Hoa
add constraint Fk_QuocGia_Id foreign key(Xuat_Xu_Id)
references Quoc_Gia(Ma_Quoc_Gia);

--Thiet lap quan he giua bang Loai khach hang va Khach hang
Alter table Khach_Hang
add constraint FK_LoaiKhachHang_Id foreign key(Loai_Id)
references Loai_Khach_Hang(Ma_Loai);

--Thiet lap quan he giua bang Hang hoa va Hoa don ban CT
Alter table Hoa_Don_Ban_CT
Add constraint FK_HangHoa_HonDonBan_Id foreign key(Ma_Hang)
references Hang_Hoa(Ma_Hang);
--Thiet lap quan he giua bang Hoa don ban va hoa don ban chi tiet
Alter table Hoa_Don_Ban_CT
Add constraint Fk_HoaDonBan_HoaDonBanCT_Id foreign key(Ma_hoa_don)
references Hoa_Don_Ban(Ma_Hoa_Don);

--Thiet lap quan he giua bang Hang hoa va Hoa don mua CT
Alter table Hoa_Don_Mua_CT
Add constraint FK_HangHoa_HonDonMua_Id foreign key(Ma_Hang)
references Hang_Hoa(Ma_Hang);
--Thiet lap quan he giua bang Hoa don mua va hoa don mua chi tiet
Alter table Hoa_Don_Mua_CT
Add constraint Fk_HoaDonMua_HoaDonMuaCT_Id foreign key(Ma_hoa_don)
references Hoa_Don_Mua(Ma_Hoa_Don);

--Thiet lap quan he giua bang Hoa don ban va Khach hang
Alter table Hoa_Don_Ban
Add constraint FK_KhachHang_Id foreign key(Ma_Khach_Hang)
references Khach_Hang(Ma_KH);

--3. Nhập thông tin cho bảng
--Them moi thong tin quoc gia
Insert into Quoc_Gia values('USA', 'Mỹ');
Insert into Quoc_Gia values('NB', 'Nhật Bản');
Insert into Quoc_Gia(Ma_Quoc_Gia, Ten_Quoc_Gia) values('HQ', 'Hàn Quốc');
Insert into Quoc_Gia(Ma_Quoc_Gia, Ten_Quoc_Gia) values('TL', 'Thái Lan');
Insert into Quoc_Gia(Ma_Quoc_Gia, Ten_Quoc_Gia) values('TQ', 'Trung Quốc');
Insert into Quoc_Gia(Ma_Quoc_Gia, Ten_Quoc_Gia) values('VN', 'Việt Nam');
Insert into Quoc_Gia(Ma_Quoc_Gia, Ten_Quoc_Gia) values('LAO', 'Lào');
Select *  from Quoc_Gia;
--Them moi thong tin khach hang
Insert into Khach_Hang(Ma_KH, Ho_Ten, Dien_thoai, Email)
Select Employee_Id, Last_Name|| ' ' || First_Name, Phone_Number, Email from HR.Employees;
Select * from Khach_hang;

--Thêm mới thông tin hàng hoá
Insert into Hang_Hoa(Ma_Hang, Ten_Hang, Mo_Ta, Xuat_Xu_Id)
values('IP10', 'iPhone 10 Plus', null, 'TQ');
Select * from Hang_Hoa;

Insert into Hang_Hoa(Ma_Hang, Ten_Hang, Mo_Ta, Xuat_Xu_Id)
values('&ma', '&tenHang', null, '&maQuocGia');

--Thêm thông tin loại khách hàng
insert into Loai_Khach_Hang values(1,'Cá nhân');
insert into Loai_Khach_Hang values(2,'Doanh nghiệp');
--Cập nhật thông tin cho bảng Khach_Hang
Update Khach_Hang set Gioi_Tinh = '0', Ngay_Sinh= sysdate, Dia_Chi = 'Hà Nội', Loai_Id= 1;
--Cập nhật thoả mãn điều kiện
Update Khach_Hang set Gioi_Tinh = '1', Ngay_Sinh= sysdate - 2, Dia_Chi = 'Hà Nội', Loai_Id= 2
where Ma_KH <= 110;

--Cập nhật lại thông tin Khách hàng có id = 100
Update Khach_Hang set Gioi_Tinh = '1', Ngay_Sinh= sysdate - 30, Dia_Chi = 'Hà Nam', Loai_Id= 2,
Dien_Thoai = '0988325689', Email= 'steven@gmail.com'
where Ma_KH = '100';

--Xoá thông tin trong 1 bảng
--Xoá tất cả thông tin
Delete from Khach_Hang;
--Xoá thông tin thoả mãn điều kiện
Delete from Khach_Hang where Ma_KH = '207';
--4. Xử lý thông tin, yêu cầu
