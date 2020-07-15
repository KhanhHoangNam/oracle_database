--Xem cấu trúc 1 bảng
Describe Sinh_Vien;
--Thiết lập số điện thoại là duy nhất
Alter table Sinh_Vien
add constraint UIQ_DienThoai UNIQUE(Dien_Thoai);

--Thiết lập kiểm tra So_Tin_Chi lớn hơn 0
Alter table Mon_Hoc
add constraint CHECK_SoTinChi CHECK(So_Tin_Chi > 0);

Create table Department100
as
--Lấy thông tin nhân viên
Select Employee_Id, Last_Name,FIrst_Name,
Salary, Phone_Number, Email, Hire_Date  from HR.Employees
where Department_Id = 100;

--Lấy thông tin từ 1 bảng
--Select * from [Tên bảng]
Select * from Departement100;

--Xoá bảng
Drop table Departement100;

Describe Mon_Hoc;
Describe Phong_Hoc;

--Tạo ra 1 bảng Diem_Thi
Create table Diem_Thi
(
Sinh_Vien_Id varchar2(10),
Mon_Hoc_Id varchar2(10),
Diem number(2,1),
Phong_Hoc_Id number(6),
constraint PK_Diem_Thi_Id primary key(Sinh_Vien_Id,Mon_Hoc_Id)
);

--Thiết lập quan hệ giữa các bảng
--Bảng Diem_Thi và Mon_Hoc
Alter table Diem_Thi
add constraint FK_MonHoc_Id foreign key(Mon_Hoc_Id)
references Mon_Hoc(Ma_MH);
--Bảng Diem_Thi và Sinh_Vien
Alter table Diem_Thi
add constraint FK_SinhVien_Id foreign key(Sinh_Vien_Id)
references Sinh_Vien(Ma_SV);
--Bảng Diem_Thi và Phong_Hoc
Alter table Diem_Thi
add constraint FK_PhongHoc_Id foreign key(Phong_Hoc_Id)
references Phong_Hoc(Ma_Phong);

Select *  from Phong_Hoc;

Alter table Diem_Thi
modify Diem number(3,1);