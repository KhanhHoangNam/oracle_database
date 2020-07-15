--Lấy thông tin từ bảng Departments và Locations
Select Department_Id, Department_Name,
location_id, city
 from Departments natural join
 Locations;
 
 --Bảng Employees và Departments
 Select Employee_Id, First_Name, Last_Name,
 Salary, Department_Id, Department_Name
 from Employees natural join Departments;
 
 --Lấy thông tin từ bảng Employees và Departments
 --sử dụng using
 Select Employee_Id, First_Name, Last_Name,
 Salary, Department_Id, Department_Name 
 from Employees JOIN Departments 
 Using(Department_Id);
 
 --Sử dụng từ khoá JOIN, ON
 Select Employee_Id, First_Name, Last_Name,
 Salary, d.Department_Id, Department_Name 
 from Employees e JOIN Departments d
 ON e.Department_Id = d.Department_Id;
 
  Select Employee_Id, First_Name, Last_Name,
 Salary, d.Department_Id, Department_Name, City 
 from Employees e JOIN Departments d
 ON e.Department_Id = d.Department_Id
  JOIN Locations l ON d.Location_Id = l.Location_Id;
  
  --Sử dụng toán tử AND
  Select Employee_Id, First_Name, Last_Name,
 Salary, d.Department_Id, Department_Name 
 from Employees e JOIN Departments d
 ON e.Department_Id = d.Department_Id
 AND e.manager_id = 149;
 
 Select Employee_Id, First_Name, Last_Name,
 Salary, d.Department_Id, Department_Name 
 from Employees e JOIN Departments d
 ON e.Department_Id = d.Department_Id
 where e.Manager_id = 149;
 
 --Self join
 
  Select worker.EMployee_Id as emp_id_worker,
  worker.First_Name as First_name_Worker,
  manager.Employee_id emp_id_manager,
  manager.First_Name as First_Name_Manager
   from Employees worker JOIN  Employees manager
   ON worker.Manager_Id = manager.Employee_Id;
   
--Left outer join

  Select Employee_Id, First_Name, Last_Name,
 Salary, d.Department_Id, Department_Name 
 from Employees e LEFT OUTER JOIN Departments d 
 ON e.Department_Id = d.Department_Id;
 
 --Right outer join
   Select Employee_Id, First_Name, Last_Name,
 Salary, d.Department_Id, Department_Name 
 from Employees e RIGHT OUTER JOIN Departments d 
 ON e.Department_Id = d.Department_Id;
 
 --Lấy tất cả thông tin trong hai bảng
 
   Select Employee_Id, First_Name, Last_Name,
 Salary, d.Department_Id, Department_Name 
 from Employees e FULL OUTER JOIN Departments d 
 ON e.Department_Id = d.Department_Id;
 
 --Sử dụng subquery
 
Select Employee_Id, First_Name, Last_name, Salary
from Employees where Salary > (
Select Salary from Employees 
where Last_Name = 'Abel');

--Lấy tất cả thông tin chi tiết của các phòng ban
--đã có nhân viên
Select * from Departments where Department_id in (
Select distinct Department_id
 from Employees where Department_id is not null
 );
 
 --Lấy thông tin các nhân viên có lương bằng
 --lương nhỏ nhất trong bảng Employees
 Select Employee_Id, First_Name, Last_name, Salary
  from Employees e where
   Salary = (Select min(Salary) from Employees);
   
   --Thống kê lương nhỏ nhất của các phòng ban
   --trong đó lương nhỏ nhất phải lớn hơn lương min
   --của phòng id = 50
   Select Department_id, min(Salary) as Salary_Min
    from Employees
    where Department_id is not null
    group by Department_Id
    having min(Salary) > (
    Select min(Salary) from Employees 
    where Department_id = 50);
    
--Đưa ra những công việc trong phòng Đào tạo có mã là 80 và phòng phần
--mềm có mã là 60.
Select * from Departments;
Select distinct job_id from Employees 
where Department_Id in (60,80);
--Đưa ra Họ tên, Phòng, công việc, lương của những người có lương lớn hơn lương
--trung bình của toàn bộ nhân viên.
Select Last_Name || ' ' || First_Name as Full_name,
Department_Name, Job_id, Salary from Employees e JOIN 
Departments d ON e.Department_Id = d.Department_id
where Salary > (Select avg(Salary) from Employees);
--Đưa ra những nhân viên có lương lớn hơn người có lương lớn nhất trong 
--phòng Sale.
Select *  from Employees where Salary > (
Select max(Salary) from Employees where Department_id = 80);
--Đưa ra Họ tên, Mã phòng, Lương của các nhân viên có Lương = Lương thấp nhất
--trong đơn vị của họ.
Select * from (
Select Department_Id, min(Salary) SalaryMin from Employees
group by Department_id
) tk JOIN Employees e ON tk.Department_Id = e.Department_Id
 and tk.SalaryMin = e.Salary;
--Đưa ra Họ tên, Mã phòng, Lương của các nhân viên có Lương = Lương thấp nhất
--trong một đơn vị nào đó.
--Đưa ra Họ tên, Lương của các nhân viên có Luong lớn nhất của phòng có mã
--phòng là kinh doanh 80.
Select Last_Name || ' ' || First_Name as Full_name, Salary from 
Employees where Salary = (
Select max(Salary) from Employees where Department_id = 80
);
--Đưa ra Mã phòng, AVG(Salary) của đơn vị có trung bình lương lớn hơn lương nhỏ
--nhất của phòng có mã phòng là phần mềm 60.
Select Department_id, round(avg(Salary),2) from Employees
where Department_id is not null
group by Department_id
having avg(Salary) > (
Select min(Salary) from Employees where Department_id = 60);

--Lấy dữ liệu từ dòng 11 đến 20
Select *  from (
Select row_number() OVER(Order by Employee_Id) row_num, Employee_Id,
First_Name, Last_name, Salary
from Employees
)  EmployeesPage where row_num > 10 and row_num<= 20;



--Tạo ra 1 bảng tạm
With EmployeesPage as (
Select row_number() OVER(Order by Employee_Id) row_num, Employee_Id,
First_Name, Last_name, Salary
from Employees
)
Select *  from EmployeesPage where row_num >10  and row_num <= 20;

--Thống kê số lượng nv trong bảng
Select distinct count(*) OVER(PARTITION by Department_Id) as Num,
Department_Id
from EMployees;

Select count(*) OVER(PARTITION by Department_Id) as Num,
Department_Id
from EMployees;

Select Department_Id, count(*) as Num from Employees
group by Department_Id;


 
 