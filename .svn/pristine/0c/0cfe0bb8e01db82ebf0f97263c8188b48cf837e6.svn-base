--BÀI KIỂM TRA THỰC HÀNH KHÓA HỌC ORACLE FOR BASE
--Họ tên: Hoàng Nam Khánh
--I. Tạo bảng
--Bảng Chủ đề
Create table Chu_De
(
Ma_Chu_De char(10) primary key,
Chu_De varchar2(30),
Mo_Ta varchar2(150)
);

--Bảng Sách(Mã sách, tên sách, Mô tả, Giá mua, Số đầu sách, Số trang, Ngày mua, Mã chủ đề)
Create table Sach
(
Ma_Sach char(10) primary key,
Ten_Sach varchar2(30),
Gia_Mua number(12, 2),
So_Dau_Sach number(9),
So_Trang number(9),
Ngay_Mua date,
Ma_Chu_De char(10)
);

--Bảng Sinh Viên
Create table Sinh_Vien
(
Ma_SV varchar(10) primary key,
Ho_Ten varchar2(30),
Gioi_Tinh char(1),
Ngay_Sinh date,
Dien_Thoai varchar(20),
Email varchar(50),
Dia_Chi varchar2(150)
);

--Bảng SinhVien_Sach
Create table SinhVien_Sach
(
Ma_SV varchar(10),
Ma_Sach char(10),
Ngay_Muon date,
Ngay_Tra date,
So_Luong number(9),
Constraint PK_SinhVien_Sach primary key(Ma_SV, Ma_Sach)
);

--II. Thiết lập quan hệ các bảng
--Thiết lập quan hệ giữa bảng Sách và bảng Chủ đề
Alter table Sach
Add Constraint FK_Sach_Chude Foreign key(Ma_Chu_De)
REFERENCES Chu_De(Ma_Chu_De);

--Thiết lập quan hệ giữa bảng SinhVien_Sach và bảng Sách
Alter table SinhVien_Sach
Add Constraint FK_SinhVien_Sach_Sach Foreign key(Ma_Sach)
References Sach(Ma_Sach);

--Thiết lập quan hệ giữa bảng SinhVien_Sach và SinhViên
Alter table SinhVien_Sach
Add Constraint FK_SinhVien_Sach_SinhVien Foreign key(Ma_SV)
References Sinh_Vien(Ma_SV);

-- Thêm thông tin bảng Sinh Viên
Insert into Sinh_Vien(Ma_SV, Ho_Ten, Gioi_Tinh, Ngay_Sinh, Dien_Thoai, Email, Dia_Chi)
values('SF001', 'Nguyễn Văn A', '1', sysdate, '0983080111', 'anv@gmail.com', 'Hanoi');

Insert into Sinh_Vien(Ma_SV, Ho_Ten, Gioi_Tinh, Ngay_Sinh, Dien_Thoai, Email, Dia_Chi)
values('SF002', 'Nguyễn Thị B', '0', sysdate, '0983080112', 'bnt@gmail.com', 'Hanoi');

Insert into Sinh_Vien(Ma_SV, Ho_Ten, Gioi_Tinh, Ngay_Sinh, Dien_Thoai, Email, Dia_Chi)
values('SF003', 'Nguyễn Văn C', '1', sysdate, '0983080113', 'cnv@gmail.com', 'HaNam');

Insert into Sinh_Vien(Ma_SV, Ho_Ten, Gioi_Tinh, Ngay_Sinh, Dien_Thoai, Email, Dia_Chi)
values('SF004', 'Nguyễn Văn D', '1', sysdate, '0983080114', 'dnv@gmail.com', 'Hanoi');

Insert into Sinh_Vien(Ma_SV, Ho_Ten, Gioi_Tinh, Ngay_Sinh, Dien_Thoai, Email, Dia_Chi)
values('SF005', 'Nguyễn Văn E', '1', sysdate, '0983080115', 'env@gmail.com', 'Hanoi');

Insert into Sinh_Vien(Ma_SV, Ho_Ten, Gioi_Tinh, Ngay_Sinh, Dien_Thoai, Email, Dia_Chi)
values('SF006', 'Nguyễn Văn F', '1', sysdate, '0983080121', 'fnv@gmail.com', 'Hanoi');

Insert into Sinh_Vien(Ma_SV, Ho_Ten, Gioi_Tinh, Ngay_Sinh, Dien_Thoai, Email, Dia_Chi)
values('SF007', 'Nguyễn Văn X', '1', sysdate, '0983080122', 'xnv@gmail.com', 'Hanoi');

Insert into Sinh_Vien(Ma_SV, Ho_Ten, Gioi_Tinh, Ngay_Sinh, Dien_Thoai, Email, Dia_Chi)
values('SF008', 'Nguyễn Văn G', '1', sysdate, '0983080131', 'gnv@gmail.com', 'Hanoi');

Insert into Sinh_Vien(Ma_SV, Ho_Ten, Gioi_Tinh, Ngay_Sinh, Dien_Thoai, Email, Dia_Chi)
values('SF009', 'Nguyễn Văn M', '1', sysdate, '0983080141', 'mnv@gmail.com', 'Hanoi');

Insert into Sinh_Vien(Ma_SV, Ho_Ten, Gioi_Tinh, Ngay_Sinh, Dien_Thoai, Email, Dia_Chi)
values('SF000', 'Nguyễn Văn J', '1', sysdate, '0983080333', 'anv@gmail.com', 'ThanhHoa');

-- Thêm thông tin bảng Chủ đề
Insert into Chu_De(Ma_Chu_De, Chu_De, Mo_Ta)
values('CD01', 'Toán', 'Chủ đề Toán học');

Insert into Chu_De(Ma_Chu_De, Chu_De, Mo_Ta)
values('CD02', 'Công nghệ thông tin', 'Chủ đề công nghệ thông tin');

Insert into Chu_De(Ma_Chu_De, Chu_De, Mo_Ta)
values('CD03', 'Ngoại ngữ', 'Chủ đề ngoại ngữ');

Insert into Chu_De(Ma_Chu_De, Chu_De, Mo_Ta)
values('CD04', 'Kinh tế', 'Chủ đề kinh tế');

-- Thêm thông tin bảng sách
Insert into Sach(Ma_Sach, Ten_Sach, Gia_Mua, So_Dau_Sach, So_Trang, Ngay_Mua, Ma_Chu_De)
values('TCC', 'Toán cao cấp', 150000, 100, 350, sysdate, 'CD01' );

Insert into Sach(Ma_Sach, Ten_Sach, Gia_Mua, So_Dau_Sach, So_Trang, Ngay_Mua, Ma_Chu_De)
values('TTHCM', 'Tư tưởng Hồ Chí Minh', 100000, 50, 300, sysdate, 'CD04' );

Insert into Sach(Ma_Sach, Ten_Sach, Gia_Mua, So_Dau_Sach, So_Trang, Ngay_Mua, Ma_Chu_De)
values('KTVM', 'Kinh tế vĩ mô', 120000, 80, 500, sysdate, 'CD04' );

Insert into Sach(Ma_Sach, Ten_Sach, Gia_Mua, So_Dau_Sach, So_Trang, Ngay_Mua, Ma_Chu_De)
values('TA', 'Ngữ pháp Tiếng Anh', 180000, 150, 500, sysdate, 'CD03' );

Insert into Sach(Ma_Sach, Ten_Sach, Gia_Mua, So_Dau_Sach, So_Trang, Ngay_Mua, Ma_Chu_De)
values('CSDL', 'Cơ sở dữ liệu', 200000, 100, 400, sysdate, 'CD02' );

Insert into Sach(Ma_Sach, Ten_Sach, Gia_Mua, So_Dau_Sach, So_Trang, Ngay_Mua, Ma_Chu_De)
values('MMT', 'Mạng máy tính', 90000, 160, 450, sysdate, 'CD02' );

--Thêm thông tin bảng SinhVien_Sach
Insert into SinhVien_Sach(Ma_SV, Ma_Sach, Ngay_Muon, Ngay_Tra, So_Luong)
values('SF001', 'TCC', sysdate - 30, sysdate, 1);

Insert into SinhVien_Sach(Ma_SV, Ma_Sach, Ngay_Muon, Ngay_Tra, So_Luong)
values('SF002', 'CSDL', sysdate - 45, sysdate -40, 2);

Insert into SinhVien_Sach(Ma_SV, Ma_Sach, Ngay_Muon, Ngay_Tra, So_Luong)
values('SF000', 'MMT', sysdate - 5, sysdate, 3);

Insert into SinhVien_Sach(Ma_SV, Ma_Sach, Ngay_Muon, Ngay_Tra, So_Luong)
values('SF005', 'TA', sysdate - 5, sysdate, 1);

Insert into SinhVien_Sach(Ma_SV, Ma_Sach, Ngay_Muon, Ngay_Tra, So_Luong)
values('SF006', 'KTVM', sysdate - 5, sysdate, 3);

--Truy vấn
--1.Thực hiện lấy thông tin bảng dữ liệu bao gồm các thông tin sau: Mã sách, Tên sách,
--Số trang, số đầu sách, Giá trị sách, Tên chủ đề.
Select * From Sach;

--2.Thực hiện thống kê top 3 sách có giá trị cao nhất trong thư viện của trường đó tính
--trên tổng đầu sách.
Select * From (Select * From Sache
Order by so_dau_sach DESC) Where rownum <=3;

--3.Hiển thị danh sách lịch sử mượn sách của sinh viên bao gồm các thông tin sau: Mã
--SV, Họ tên, Điện thoại, Email, Mã sách, Tên sách, Số ngày mượn.
