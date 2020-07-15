--Tạo bảng chủ đề
Create table Chu_De
(
Ma_Chu_De char(5) primary key,
Ten_Chu_De varchar2(150)
);

--Tạo bảng thông tin sách
Create table Sach
(
Ma_sach char(10) primary key,
Ten_sach varchar2(150),
Mo_ta varchar2(500),
Gia_mua number(12,2),
So_dau_sach number(4),
So_trang number(6),
Ngay_mua date,
Ma_Chu_De char(5)
);

--Tạo bảng sinh viên
Create table Sinh_Vien
(
Ma_Sinh_Vien varchar(10) primary key,
Ho_Ten varchar2(30),
Gioi_tinh char(1),
Ngay_Sinh date,
Dien_thoai varchar(20),
Email varchar(50),
Dia_chi varchar2(250)
);

--Tạo bảng lịch sử mượn trả
Create table Lich_Su_Muon_Tra
(
Sinh_Vien_Id varchar(10),
Sach_Id char(10),
So_luong number(1),
Ngay_Muon date,
Ngay_Tra date
);

--Tạo quan hệ giữa Sach và ChuDe
Alter table Sach
add constraint FK_Chu_De_Id foreign key(Ma_Chu_De)
references Chu_De(Ma_Chu_De);

--Tạo quan hệ giữa LichSuMuonTra và Sach
Alter table Lich_Su_Muon_Tra
add constraint FK_Sach_Id foreign key(Sach_Id)
references Sach(Ma_Sach);

--Tạo quan hệ giữa LichSuMuonTra và SinhVien
Alter table Lich_Su_Muon_Tra
add constraint FK_Sinh_Vien_Id foreign key(Sinh_Vien_Id)
references Sinh_Vien(Ma_Sinh_Vien);

--Nhập thông tin cho các bảng
--Nhập thông tin chủ đề
Insert into Chu_De values('KT', 'Kinh tế');
Insert into Chu_De values('TH', 'Toán học');
Insert into Chu_De values('TH1', 'Tin học');
Insert into Chu_De values('NN', 'Ngoại ngữ');
Insert into Chu_De values('TN', 'Thiếu nhi');
Insert into Chu_De values('TT', 'Truyện Tranh');
Insert into Chu_De values('CT', 'Chính trị');
Select * from Sach;

--Nhập thông tin sách
Insert into Sach values('TCC','Toán cao cấp','',150000,100,350,sysdate,'TH1');
Insert into Sach values('TTHCM','Tư tưởng Hồ Chí Minh','',100000,50,300,sysdate,'CT');
Insert into Sach values('KTVM','Kinh tế Vĩ mô','',120000,80,500,sysdate,'KT');
Insert into Sach values('TA','Ngữ pháp Tiếng anh cơ bản','',180000,150,500,sysdate,'NN');
Insert into Sach values('CSDL','Cơ sở dữ liệu','',200000,100,400,sysdate,'TH1');
Insert into Sach values('MMT','Mạng máy tính','',90000,160,450,sysdate,'TH1');

--Nhập sinh viên
Insert into Sinh_Vien(Ma_Sinh_Vien, Ho_Ten,
Dia_Chi)
values('SF001', 'Vũ Thành Luân',
'Hà Nội');

Insert into Sinh_Vien(Ma_Sinh_Vien, Ho_Ten,
Dia_Chi)
values('SF002', 'Nguyễn Tuấn Linh',
'Nam Định');

Insert into Sinh_Vien(Ma_Sinh_Vien, Ho_Ten,
Dia_Chi)
values('SF003', 'Hoàng Nam Khánh',
'Hải Phòng');

Insert into Sinh_Vien(Ma_Sinh_Vien, Ho_Ten,
Dia_Chi)
values('SF004', 'Đinh Thị Đầm',
'Hà Nội');

Insert into Sinh_Vien(Ma_Sinh_Vien, Ho_Ten,
Dia_Chi)
values('SF005', 'Trịnh Quang Trung',
'Hải Phòng');
Insert into Sinh_Vien(Ma_Sinh_Vien, Ho_Ten,
Dia_Chi)
values('SF006', 'Nguyễn Văn Hùng',
'Hải Phòng');
Insert into Sinh_Vien(Ma_Sinh_Vien, Ho_Ten,
Dia_Chi)
values('SF007', 'Ngô Vi Đạt',
'Hải Phòng');

Insert into Sinh_Vien(Ma_Sinh_Vien, Ho_Ten,
Dia_Chi)
values(SEQ_SinhVien_Id.nextval, 'Đỗ Việt Anh',
'Hà Nội');

Insert into Sinh_Vien(Ma_Sinh_Vien, Ho_Ten,
Dia_Chi)
values(SEQ_SinhVien_Id.nextval, 'Nguyễn Ngọc Tùng',
'Hà Nội');

--Nhập thông tin mượn trả
insert into Lich_Su_muon_tra values('SF004','TCC',1,'15/08/2019','20/08/2019');
insert into Lich_Su_muon_tra values('SF005','TTHCM',1,'17/08/2019','20/08/2019');
insert into Lich_Su_muon_tra values('SF004','KTVM',1,'16/08/2019','28/08/2019');
insert into Lich_Su_muon_tra values('SF005','KTVM',1,'15/08/2019','25/08/2019');
insert into Lich_Su_muon_tra values('SF003','TA',1,'17/08/2019','22/08/2019');
insert into Lich_Su_muon_tra values('SF06','TTHCM',1,'05/09/2019','10/09/2019');
insert into Lich_Su_muon_tra values('SF004','TCC',1,'11/09/2019','16/09/2019');
insert into Lich_Su_muon_tra values('SF003','CSDL',1,'20/09/2019',null);
insert into Lich_Su_muon_tra values('SF001','CSDL',1,'25/09/2019',null);
insert into Lich_Su_muon_tra values('SF002','CSDL',1,'03/10/2019',null);

--Thực hiện lấy thông tin bảng dữ liệu bao gồm các thông tin sau: Mã sách, Tên sách,
--Số trang, số đầu sách, Giá trị sách, Tên chủ đề.
Select Ma_Sach, Ten_Sach, So_trang, So_dau_Sach,
Gia_mua, Ten_chu_de from Sach s
JOIN Chu_De cd  ON s.Ma_Chu_De = cd.Ma_Chu_De;
--Thực hiện thống kê top 3 sách có giá trị cao nhất trong thư viện của trường đó tính trên tổng đầu sách.
Select Ma_Sach, Ten_Sach, Gia_Mua * So_Dau_Sach as 
Gia_tri from Sach
where rownum <= 3
order by Gia_Tri desc;
--Hiển thị danh sách lịch sử mượn sách của sinh viên bao gồm các thông tin sau: 
--Mã SV, Họ tên, Điện thoại, Email, Mã sách, Tên sách, Số ngày mượn.
Create or Replace view vDanhSachSinhVienMuon
as
Select sv.Ma_Sinh_Vien,
Ho_ten, Dien_thoai, Email,
s.Ma_Sach,
Ten_Sach,
ROUND((NVL(Ngay_Tra, sysdate) - Ngay_Muon),0) as SoNgayMuon 
from Lich_Su_Muon_Tra ls
JOIN Sach s ON ls.Sach_id = s.Ma_Sach
JOIN Sinh_Vien sv ON ls.Sinh_Vien_Id = sv.Ma_Sinh_Vien;

Select * from vDanhSachSinhVienMuon;
--Thống kê các đầu sách đã có sinh viên mượn trong hệ thống.
--Lấy các mã sách đã được mượn
Select * from Sach where Ma_sach in (
Select distinct Sach_Id from Lich_Su_muon_Tra
);

--
Select Sach_id, sum(So_luong) as SoLuongDaMuon
from Lich_Su_Muon_Tra
group by Sach_id;

--Thống kê danh sách các sinh viên chưa trả sách đến
--ngày 01/10/2019 trong hệ thống. 
Select * from Lich_su_muon_tra
where Ngay_Tra > TO_DATE('01/10/2019')
OR (Ngay_tra is null and Ngay_muon <= TO_DATE('01/10/2019'));


--Thống kê danh sách các sinh viên và các đầu sách đến hạn trả thư viện.
Select Ma_Sinh_vien, Ho_Ten, Sach_id,
Ngay_Muon, Ngay_Tra, ROUND((sysdate - Ngay_Muon),0) as SoNgayMuon 
from Lich_Su_muon_tra l JOIN Sinh_Vien sv
ON l.SINH_VIEN_ID = sv.Ma_sinh_vien
where ROUND((sysdate - Ngay_Muon),0) >= 5 and Ngay_Tra is null;

--Thống kê các sinh viên đã trả sách nhưng bị quá thời gian và số tiền phạt của từng
--sinh viên đó bao gồm các thông tin sau: 
--Mã SV, Họ tên, Điện thoại, Email, Mã sách, Tên sách, Số ngày mượn, Tiền phạt.
Create view viewSinhVienBiPhat
as
Select Ma_Sinh_vien, Ho_Ten, Sach_id,Ten_Sach,
Ngay_Muon, Ngay_Tra, ROUND((Ngay_Tra - Ngay_Muon),0) as SoNgayMuon ,
(ROUND((Ngay_Tra - Ngay_Muon),0) - 5 )*50000 as So_tien_phat
from Lich_Su_muon_tra l JOIN Sinh_Vien sv
ON l.SINH_VIEN_ID = sv.Ma_sinh_vien
JOIN Sach s ON l.Sach_Id = s.Ma_sach
where Ngay_tra is not null and ROUND((Ngay_Tra - Ngay_Muon),0) > 5;

Select * from viewSinhVienBiPhat;