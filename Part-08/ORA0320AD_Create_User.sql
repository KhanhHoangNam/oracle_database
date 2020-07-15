--Tạo user mới
Create user demo_3005 identified by 123;

--Phân quyền sử dụng
Grant create session, create table, create view, create sequence
 to demo_3005;

grant connect, resource to demo_3005;

--Tạo ra vai trò
Create role ora0320_student;

--Cấp quyền cho vai trò
Grant create session, create table, create view, create sequence
, connect, resource to ora0320_student;

--Tạo ra 1 user mới
Create user demo_3005_1  identified by 123;

--Phân vai trò cho user
grant ora0320_student to demo_3005_1;
grant resource to demo_3005_1;

--Thay đổi mật khẩu
Alter user demo_3005_1 identified by 1234;

--Xem các quyền hệ thống
Select *  from DBA_SYS_PRIVS;

--Quyền user
Select * from DBA_TAB_PRIVS;

--Các role trong Oracle
Select *  from DBA_Role_Privs;

--Các quyền cho user
Select *  from User_SYS_Privs;

Create user demo_3005_3 identified by 123;

grant create session, create table, create view to demo_3005_2;

Create table demo_3005_2.Nhan_Vien
(
Ma_NV number(9,0) primary key,
Ho_ten varchar2(30),
Dien_thoai varchar(20),
Email varchar2(50),
Dia_chi varchar2(150)
);

grant resource to demo_3005_2;

grant select, insert,delete
on demo_3005_2.Nhan_Vien
to demo_3005_2;

revoke delete on demo_3005_2.Nhan_Vien
from demo_3005_2;

Create user demo_3005_3 identified by 123;
grant create session, create table, create view to demo_3005_3;

grant select demo_3005_2.Nhan_Vien
to demo_3005_3;


--Thiết lập để hiển thị thông tin ra ngoài màn hình
set serveroutput on;

--Khai báo biến
Declare
thongBao varchar2(50) := 'Chào mừng các bạn đến với PL/SQL !';
Begin
dbms_output.put_line(thongBao);
End;

--Sử dụng If Then
Declare
a number(2) := 0;
Begin
--Gán lại giá trị mới
a := 10;
--Kiểm tra điều kiện, true
If a <  20  Then
    dbms_output.put_line('a la so nho hon 20');
End If;
dbms_output.put_line('Gia tri cua a la: ' || a);
End;


