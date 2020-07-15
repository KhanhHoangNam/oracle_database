--Lấy thông tin trong bảng Phòng ban, nhân viên
Select * from Departments;
--Lấy các thông tin với các cột mong muốn
Select Employee_Id, Last_Name, First_Name, Email, Phone_Number,
Salary from Employees;

--Sử dụng toán tử
--Lương 12  tháng của nv
Select Employee_id, First_Name, Last_Name, Salary,
12 * Salary as Salary_Year from Employees;

--Lấy id, họ tên, Phone, Email, Salary
Select Employee_Id, Last_Name || ' '  || First_Name as Full_Name
, Phone_Number, Email, Salary from Employees;

Select Department_Name || ' Department' || q'['s Manager Id: ]'
|| Manager_Id from Departments;

--Lấy các mã phòng ban không trùng lặp đã nhân viên
Select distinct Department_Id from Employees;

--Lọc thông tin trong Oracle
--Select * | colname from [Tên bảng]
--where [Biểu thức điều kiện]
--Lấy tất cả nhân viên thuộc phòng id=90
Select *  from Employees where Department_Id = 90;

--Lấy tất cả nhân viên có họ là King
Select * from Employees where Last_Name = 'King';

--Lấy lương nhỏ hơn 3000
Select *  from Employees where Salary < 3000;

--Lấy lương trong đoạn 3000 - 3500
Select * from Employees where Salary between 3000 and 3500;
Select *  from Employees where Salary >= 3000 and Salary <= 3500;

--Lấy nhân viên của các phòng có id = 90, 100, 101
Select * from Employees where Department_Id in (90, 100, 101);

--Lấy tất cả nhân viên có tên bắt đầu bằng kí tự S
Select *  from Employees where First_Name like 'S%';
--Lấy thông có chứa 1 kí tự trước đó sau kí tự tiếp theo là o
Select *  from Employees where First_name Like '_o%';

--Lấy thông tin nv thoả mãn 2 điều kiện lương lớn hơn hoặc bằng 10000
--và job chứa MAN
Select * from Employees where Salary >= 10000
and Job_Id like '%MAN%';

--Lấy thông tin nv thoả mãn 1 trong 2 điều kiện lương lớn hơn hoặc bằng 10000
--và job chứa MAN
Select * from Employees where Salary >= 10000
OR Job_Id like '%MAN%';

--Sắp xếp theo lương tăng dần
Select Employee_Id, First_Name, Last_Name, Salary
from Employees order by Salary asc;

--Sắp xếp theo lương giảm dần
Select Employee_Id, First_Name, Last_Name, Salary
from Employees order by Salary desc;

--Sử dụng sắp xếp theo chỉ số thứ tự của bảng
Select Employee_Id, First_Name, Last_Name, Salary
from Employees order by 4 desc;

Select Employee_Id, First_Name, Last_Name, Department_id, Salary
from Employees order by Department_Id, Salary desc;



