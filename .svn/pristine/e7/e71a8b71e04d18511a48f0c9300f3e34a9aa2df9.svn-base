--Viết các thủ tục
--Thủ tục thêm mới môn học
Create or replace procedure SP_ThemMonHoc
(
ma varchar2,
ten varchar2,
tinChi number
)
as
Begin
Insert into Mon_Hoc(Ma_MH, Ten_mon, So_tin_chi)
values(ma, ten, tinChi);
End;

Select * from Mon_Hoc;
--Gọi thủ tục
execute SP_ThemMonHoc ('XSTK','Xác suất thống kê', 4);

--Thủ tục Lấy danh sách môn học
Create or replace procedure SP_DanhSachMonHoc
(
tbMonHoc out SYS_REFCURSOR
)
as
Begin
Open tbMonHoc for
Select * from Mon_Hoc
End;
End;

--Thủ tục cập nhật môn học, xoá, lấy chi tiết
Create or replace procedure SP_CapNhatMonHoc
(
ma varchar2,
ten varchar2,
tinChi number
)
Is
Begin
    Update Mon_Hoc set Ten_Mon = ten, So_tin_chi=tinChi
     where Ma_MH = ma;
End;
--Thủ tục xoá môn học
Create or replace procedure SP_XoaMonHoc
(
ma varchar2
)
Is
Begin
    Delete from Mon_Hoc 
     where Ma_MH = ma;
End;
--Thủ tục lấy chi tiết
Create or replace procedure SP_ChiTietMonHoc
(
ma varchar2,
tbMonHoc out SYS_REFCURSOR
)
as
Begin
Open tbMonHoc for
Select * from Mon_Hoc where Ma_MH = ma;
End;
Select * from Sinh_Vien;

--Hàm đếm tổng số lượng sinh viên
Create or replace function F_TongSinhVien
Return number is
tong_So number(2) :=  0;
Begin
Select count(*) INTO tong_So from Sinh_Vien;
Return tong_So;
End;

--Gọi hàm để test
Select F_TongSinhVien() from dual;

