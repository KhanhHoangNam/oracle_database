Describe Employees;

--Viết 1 hàm đếm số lượng nhân viên theo mã
--phòng ban truyền vào
Create or replace function SP_DemNhanVienTheoDV
(
departId number
)
RETURN number
is
tongSo number(4) := 0;
BEGIN
    --Lấy số lượng nv theo phòng
    Select count(Department_Id) INTO tongSo
    from EMployees where Department_Id = departId;
    --Trả về kết quả
    Return tongSo;
END;

--Gọi hàm để test
Select SP_DemNhanVienTheoDV(90) from dual;

--Sử dụng hàm trong câu lệnh truy vấn
Select Department_id, Department_Name,
SP_DemNhanVienTheoDV(Department_id) SoLuongNV
from Departments;

set serveroutput on;

Declare
total number(4) := 0;
BEGIN
    Update Employees set Salary = Salary + 500;
    IF sql%NOTFOUND THEN
        dbms_output.put_line('Không có dòng nào đc cập nhật');
    ELSIF sql%FOUND THEN
       total := sql%RowCount;
       dbms_output.put_line('Số dòng cập nhật thành công: ' || TO_CHAR(total));
    END IF;
    
END;

--Duyệt từng thông tin trong danh sách
Declare
emp_Id Employees.Employee_id%type;
emp_Name Employees.First_Name%type;
CURSOR empCursor IS
    Select Employee_Id, First_Name from Employees
    where Department_ID = 60;
BEGIN
--Mở cursor
Open empCursor;
LOOP
    --Đọc từng thông tin
    FETCH empCursor into emp_Id, emp_Name;
    --In thông tin
    dbms_output.put_line(TO_CHAR(emp_Id) || ': ' || emp_Name);
    exit when empCursor%notfound;
END LOOP;

--Đóng cursor
close empCursor;
END;

Select *  from Employees where Employee_id = 100;
--Lấy thông tin từng dòng
Declare
emp_row Employees%rowtype;

BEGIN
    Select * into emp_row from EMployees
    where Employee_Id = 100;
    --In thông tin từng cột ra
    dbms_output.put_line('Employee_Id: ' || emp_row.Employee_Id);
    dbms_output.put_line('First_name: ' || emp_row.FIrst_name);
    dbms_output.put_line('Last_name: ' || emp_row.Last_name);
    dbms_output.put_line('Salary: ' || emp_row.Salary);
END;

