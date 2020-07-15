--Thiết kế cơ sở dữ liệu
--Tao bang don vi
Create table Don_Vi
(
Ma_don_vi varchar(10) primary key,
Ten_don_vi varchar2(150),
Dien_thoai varchar(20),
Email varchar(50),
Dia_Chi varchar2(250),
Ma_truong_phong varchar(10)
);

--Tao bang Nhan vien
Create table Nhan_Vien
(
Ma_nhan_vien varchar(10) primary key,
Ho_ten varchar2(30),
Gioi_tinh char(1),
Ngay_sinh date,
Dien_thoai varchar(20),
Email varchar(50),
Dia_chi varchar2(250),
Ma_don_vi varchar(10)
);

--Tao bang Du an
Create table Du_An
(
Ma_Du_An varchar(10) primary key,
Ten_du_an varchar2(150),
Mo_ta varchar2(1000),
Tu_ngay date,
Den_ngay date,
Tong_kinh_phi number(12,2)
);
--Tao bang Hang hoa
Create table Hang_hoa
(
Ma_hang varchar(10) primary key,
Ten_hang varchar2(50),
Mo_Ta varchar2(500),
So_luong number(12)--So luong hang trong kho
);

--Tao bang Khach hang
Create table Khach_hang
(
Ma_khach_hang varchar(10) primary key,
Ho_ten varchar2(30),
Dien_thoai varchar(20),
Email varchar(50),
Dia_chi varchar2(250)
);

--Tao bang Hoa don ban
Create table Hoa_don_ban
(
Ma_hoa_don varchar(10) primary key,
Ten_hoa_Don varchar2(250),
Mo_ta varchar2(500),
Ngay_ban date,
Ma_nhan_vien varchar(10),
Ma_khach_hang varchar(10)
);
--Tao bang Hoa don ban chi tiet
Create table Hoa_don_ban_CT
(
Ma_hoa_don varchar(10),
Ma_hang varchar(10),
So_luong number(6),
Gia_ban number(12,2),
constraint PK_Hoa_don_ban_CT_Id primary key(Ma_hoa_don, Ma_hang)
);

--Tao bang DuAn_NhanVien
Create table DuAn_NhanVien
(
Ma_Du_an varchar(10),
Ma_nhan_vien varchar(10),
constraint PK_DuAn_NhanVien_Id primary key(Ma_Du_An, Ma_nhan_vien)
);

--Thiet lap quan he giua cac bang
--Thiet lap giua bang Nhan_Vien va Don_vi
Alter table Nhan_vien
add constraint FK_DonVi_Id foreign key(Ma_don_vi)
references Don_vi(Ma_don_vi);
--Thiet lap quan he giua Don_Vi va Nhan_vien
Alter table Don_Vi
add constraint FK_NhanVien_TruongPhong_id foreign key(Ma_truong_phong)
references Nhan_vien(Ma_nhan_vien);
--Thiet lap quan he giua Khach_hang va Hoa_don_ban
Alter table Hoa_don_ban
add constraint FK_KhachHang_Id foreign key(Ma_khach_hang)
references Khach_hang(Ma_khach_hang);
--Thiet lap quan he giua Nhan_vien va Hoa_don_ban
Alter table Hoa_don_ban
add constraint FK_NhanVien_HoaDon_Id foreign key(Ma_nhan_vien)
references Nhan_vien(Ma_nhan_vien);
--Thiet lap quan he giua bang Hoa_don_ban_CT va Hang_hoa
Alter table Hoa_don_ban_CT
add constraint FK_HoaDonBanCT_HangHoa_Id foreign key(Ma_hang)
references Hang_hoa(Ma_hang);
--Thiet lap quan he giua bang Hoa_don_ban_CT va Hoa_don_ban
Alter table Hoa_don_ban_CT
add constraint FK_HoaDonBanCT_HoaDon_Id foreign key(Ma_hoa_don)
references Hoa_don_ban(Ma_hoa_don);
--Thiet lap giua bang DuAn_NhanVien va Nhan_Vien
Alter table DuAn_NhanVien
add constraint FK_DuAn_NhanVien_NV_Id foreign key(Ma_nhan_vien)
references Nhan_Vien(Ma_nhan_vien);
--Thiet lap quan he giua bang DuAn_NhanVien va Du_An
alter table DuAn_NhanVien
add constraint FK_DuAn_NhanVien_DuAn_ID foreign key(Ma_du_an)
references Du_An(Ma_du_an);