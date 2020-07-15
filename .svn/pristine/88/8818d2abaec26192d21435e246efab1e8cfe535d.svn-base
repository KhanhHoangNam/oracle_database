Select * from Employees where Employee_id = 107;
Update Employees set Salary = Salary/10;
--107, 2820

set serveroutput on;
Declare
e_Id Employees.Employee_Id%type := 107;
e_Sal Employees.Salary%type;
Begin

--Lấy giá trị từ câu lệnh gán cho biến
Select Salary into e_Sal from Employees
 where EMployee_id = e_Id;
--Kiểm tra
if e_Sal < 3000 then
Update Employees set Salary = Salary + 1000
where Employee_Id = e_Id;
dbms_output.put_line('Cập nhật lương mới thành công !');
End If;
End;

--Sử  dụng vòng lặp
Declare
x number(3) :=  0;
Begin
LOOP
    dbms_output.put_line(x);
    if x >= 50 then
        exit;
    end if;
    x :=  x + 10;
END LOOP;
dbms_output.put_line('Giá trị cuối của x= ' || x);
End;

