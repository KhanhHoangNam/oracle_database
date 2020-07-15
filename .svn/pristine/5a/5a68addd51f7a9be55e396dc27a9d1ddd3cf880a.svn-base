--Lam viec voi cac ham chuoi
--Chuyen ve chu thuong
Select Lower('Stanford - Day lap trinh') from dual;
--Chu hoa
Select upper('Stanford - Day lap trinh') from dual;
--Noi chuoi
Select Concat('Stanford', ' Day lap trinh') from dual;
--Lay chuoi con
Select Substr('Stanford - Day lap trinh', 1, 9) from dual;

--Lay tat ca nhan vien co ho la king
Select * from Employees where lower(Last_name) = 'king';
--Chen vao dau * cho luong du 10 so
Select Employee_id, Concat(First_name,' ' || Last_name) as FullNam,
LPad(Salary, 10, '*')
 as Salary from Employees;
 
 --Ham lay vi tri cua ki tu
 Select INSTR('Stanford', 't') from dual;
 
 --Ham so hoc
 --Ham lam tron so 2 dau phay
 Select Round(45.926,2) from dual;
 
 --Ham cat lay 2 so sau dau phay
 Select Trunc(45.926, 2) from dual;
 
 --Ham lay so du cua phep chia
 Select Mod(1600, 300) from dual;
 
 --Su dung trong cau lenh truy van
 Select Employee_Id, first_name, Last_name, Mod(Salary, 5000)
  as SalaryMod from Employees
  where Job_id = 'SA_REP';
  
  --Tinh xem nhan vien vao lam viec tinh den thoi diem hien tai
  --la bao nhieu tuan
  Select Employee_Id, First_Name, Last_name,
  Salary, Round((Sysdate - Hire_Date)/7,2) as Weeks, Hire_Date 
  from Employees;
  
  --Lay ngay cuoi cung cua thang
  Select Last_Day(sysdate) from dual;
  --Ngay tiep theo cua thu 7 la
  Select Next_Day(sysdate, 'Satuday') from dual;
  
  --Lay thong tin luong va ngay vao cong ty cua nhan vien
  --Chuyen tu ngay thang ve chuoi
  Select Employee_Id, First_Name, Last_name, Salary,
  To_char(Hire_Date, 'DD-MM-YYYY') as Hire_Date
  from Employees;
  
  --Dinh dang thong tin luong hien thi cua nhan vien
  Select Employee_Id, First_name, Last_name, 
  To_char(Salary,'$999,999.0') from Employees;
  
  --Tinh tong luong 12 thang cua nhan vien
Select Employee_Id, First_Name, Last_name,
Salary,Commission_pct, 12*salary SalaryYear, 
12*salary + (12*Salary * Commission_pct) as Total_SalaryYear,
12*salary + (12*Salary * NVL(Commission_pct,0)) as Total_SalaryYear1
from Employees;

Select Employee_Id, Manager_id, Salary,
COALESCE(To_char(Commission_pct), To_char(Manager_id), 'Khong co nguoi quan ly')
from Employees;
  
  