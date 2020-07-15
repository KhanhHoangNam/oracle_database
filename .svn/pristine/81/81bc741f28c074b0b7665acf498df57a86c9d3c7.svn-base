 --Các tài liệu, hồ sơ bao gồm các thông tin chính: Mã hồ sơ, Tên hồ sơ, Mô tả, Người tạo,
 --Ngày tạo, Ngày gửi, Ngày nhận, Tên file, định dạng, Đơn vị, Loại hồ sơ, Người ký, Ngày ký,...
 Create table Ho_So
 (
 Ma_Ho_So varchar(10) primary key,
 Ten_ho_so varchar2(150),
 Mo_ta varchar2(500),
 Nguoi_Tao_Id varchar(10),
 Ngay_tao date,
 Ngay_gui date,
 Ngay_nhan date,
 Ten_file varchar2(50),
 Dinh_dang varchar(5),
 Ma_Don_Vi varchar(10),
 Loai_Ho_So number(2),
 Nguoi_Ky_Id varchar(10),
 Ngay_Ky date
 );
--Loại hồ sơ sử dụng để phân loại tài liệu, hồ sơ được gửi đi hoặc gửi đến công ty
Create  table  Loai_Ho_So
(
Ma_loai number(2) primary key,
Ten_loai varchar2(50)
);
--Đơn vị sử dụng để lưu trữ các thông tin về các đơn vị, tổ chức liên quan trong có thể phân loại thông tin
--theo dạng cha con có nghĩa là có thể lấy các đơn vị con theo mã đơn vị cha.
Create table Don_Vi
(
Ma_Don_Vi varchar(10) primary key,
Ten_don_Vi varchar2(150),
Ma_Cha varchar(10)
);
--Thông tin cán bộ sử dụng để lưu trữ các thông tin về cán bộ trong công ty để xác định các thông tin liên quan
--trong tài liệu, hồ sơ như người tạo, người ký.
Create table Can_Bo
(
Ma_Can_Bo varchar(10) primary key,
Ho_ten varchar2(30),
Gioi_tinh char(1),
Ngay_sinh date,
Dien_thoai varchar(20),
Email varchar(50),
Dia_chi varchar2(150),
Chuc_Vu_Id varchar(10),
Don_Vi_Id varchar(10)
);
--Thông tin về chức vụ để xác định vị trí của người đó trong công ty.
Create table Chuc_Vu
(
Ma_Chuc_Vu varchar(10) primary key,
Ten_Chuc_Vu varchar2(50)
);

--Thiet lap quan he
--Thiet lap quan he giua bang Can bo va Don vi
Alter table Can_Bo
add constraint FK_DonVi_Id foreign key(Don_Vi_Id)
references Don_Vi(Ma_Don_Vi);

--Thiet lap quan he giua bang Can bo va Chuc vu
Alter table Can_bo
add constraint FK_ChucVu_id foreign key(Chuc_Vu_Id)
references Chuc_Vu(Ma_Chuc_Vu);
--Thiet lap quan he giua bang Ho_so va Loai ho so
Alter table Ho_So
add constraint FK_LoaiHoSo_Id foreign key(Loai_Ho_So)
references Loai_Ho_So(Ma_Loai);
--Thiet lap quan he giua bang Ho so va Don vi
Alter table Ho_So
Add constraint FK_HoSo_DonVi_Id foreign key(Ma_don_vi)
references Don_Vi(Ma_Don_Vi);
--Thiet lap quan he giua bang Ho so va Can bo
Alter table Ho_So
add constraint FK_NguoiTao_HoSo_id foreign key(Nguoi_Tao_Id)
references Can_Bo(Ma_Can_Bo);

Alter table Ho_So
add constraint FK_NguoiKy_HoSo_id foreign key(Nguoi_Ky_Id)
references Can_Bo(Ma_Can_Bo);
--Thiet lap quan he trong bang Don_Vi
Alter table Don_Vi
add constraint Fk_HoSo_MaCha_Id foreign key(Ma_Cha)
references Don_Vi(Ma_Don_Vi);
