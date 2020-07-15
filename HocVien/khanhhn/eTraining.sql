--1.Tạo bảng khóa học(Id, CourseName, CourseDescrption)
Create TABLE Course
(
Course_Id char(10) primary key,
Course_Name varchar2(150),
Course_Descrption varchar2(500),
Price Number(9)
);

--2.Tạo bảng lớp học(Id, ClassName, FromDate, ToDate, PlaceTraning, ExpertId, CourseId, Description)
Create Table Classes
(
Class_Id char(10) primary key,
Class_Name varchar2(150),
From_Date date,
End_Date date,
Place_Traning varchar2(150),
Expert_Id char(10),
Course_Id char(10),
Class_Description varchar2(500)
);

--Sửa bảng lớp học
Alter table Classes
Add Class_Student_Id char(10);

Alter table Classes SET UNUSED (Student_Id);

--3.Tạo bảng học viên(StudentId, FirstName, LastName, FullName, Sex, DateBirthday, Mobile, Phone, Email, Address, DateCreate,
--DateRegister, ClassId, StatusId, StudentRegisterId.)
Create table Students
(
Student_Id char(10) primary key,
First_Name varchar2(30),
Last_Name varchar2(30),
Full_Name varchar2(100),
Sex char(1),
Birth_Day date,
Phone varchar(20),
Email varchar(30),
Address varchar2(150),
Date_Create date,
Date_Register date,
Class_Id char(10),
Status_Id char(10),
Student_Register_Id char(10)
);

--9. Tạo bảng trung gian giữa bảng lớp học và sinh viên
Create Table Classes_Students
(
Class_Id char(10),
Student_Id char(10)
);

Alter table Classes_Students
Add constraint FK_Primarkey Primary key(Class_Id, Student_Id);

--4.Tạo bảng trạng thái
Create table Status
(
Status_Id char(10) primary key,
Status_Name varchar2(50)
);

--5.Tạo bảng nguồn học viên
Create table Register_Place
(
Register_Place_Id CHAR(10) primary key,
Register_Place varchar2(100),
Register_Place_Description varchar2(500)
);

--6.Tạo bảng học phí
--7.Tạo bảng thông tin tư vấn và chăm sóc học viên
--8.Tạo bảng thông tin chuyên gia(giảng viên, giáo viên)
Create table Expert
(
Expert_Id char(10) primary key,
Exerpt_Name varchar2(100),
Birth_Day date,
Sex char(1),
Phone varchar(20),
Email varchar(30),
Address varchar2(150),
Years_Experience number(2,1),
Descrption varchar2(300)
);

--ii.Thiết lập quan hệ giữa các bảng
--1.Thiết lập quan hệ giữa bảng lớp học và bảng khóa học
Alter table Classes
add constraint FK_Course_Id foreign key(Course_Id)
references Course(Course_Id); 

--2. Thiết lập quan hệ giữa bảng lớp học và bảng chuyên gia
Alter table Classes
add constraint FK_Expert_Id foreign key(Expert_Id)
references Expert(Expert_Id);

--3. Thiết lập quan hệ giữa bảng Classes và bảng Classes_Students
Alter table Classes
add constraint FK_Student_Id foreign key(Class_Student_Id)
references Classes_Students(Class_Id);
