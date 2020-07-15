
--Tao bang chua thong tin Noi dung khoa hoc
CREATE TABLE Course
(
    Id              number(10) not null,
    CourseName     varchar2(50),
    CourseDescription   VARCHAR2 (200),
    Price           number(10),
    CONSTRAINT PK_Course_Id PRIMARY KEY (Id) enable
);

--
--Tao bang luu thong tin Chuyen gia
--
CREATE TABLE ExpertInfo
(
Id          number(10) PRIMARY KEY,
ExpertName      VARCHAR2(50),
DateBirthday    date,
Sex             number(1),
Address         VARCHAR2(200),
Description     VARCHAR2(200),
YearsExperience NUMBER(2),
Email           varchar(30) unique,
Mobile          VARCHAR2(12)
);

--
--Tao bang thong tin trang thai
--
CREATE TABLE Status
(
ID number(1) PRIMARY KEY,
StatusName  VARCHAR2(50),
Description     VARCHAR2(200)
);

--
--Tao bang Nguon hoc vien dang ky
--
CREATE TABLE RegisterPlace
(
ID number(2) PRIMARY KEY,
RegisterPlace VARCHAR2(100),
Description  VARCHAR2(200)
);

--
--Tao bang thong tin lop hoc
--

CREATE TABLE Classes
(
Id              number(10) PRIMARY KEY,
ClassName       varchar2(50),
FromDate        date,
ToDate          date,
PlaceTraining   VARCHAR2(200),
Description     VARCHAR2(200),
CourseId        number(10),
CONSTRAINT FK_Class_Course_Id FOREIGN key (CourseId) REFERENCES Course(Id)
ENABLE
);

--
--Tao luu tru thong tin sinh vien
--

CREATE TABLE Students
(
StudentId      number(10) PRIMARY key,
StudendCode    varchar(10) unique,
FirstName   VARCHAR2(20),
LastName    VARCHAR2(20),
FullName    VARCHAR2(80),
Sex       number(1),
DateBirthday    date,
Mobile     VARCHAR2(12),
Phone       VARCHAR2(12),
Email       VARCHAR2(30) unique,
Address     VARCHAR2(200),
DateCreate      date,
DateRegister       date,
StatusId        number(1),
StudentRegisterId       number(2),
CONSTRAINT FK_Students_Status_Id FOREIGN key (StatusId) REFERENCES Status(Id),
CONSTRAINT FK_Student_Register_Id FOREIGN key (StudentRegisterId) REFERENCES RegisterPlace(Id)
);

--
--Tao ra mot bang trung gian giua Students va Classes
--

CREATE TABLE Student_Class
(
ID number(10) PRIMARY KEY,
StudentId   number(10),
ClassId     number(10),
Price1      number(10),
Price2      number(10),
TotalPrice      number(10),
ExpertId        number(10),
CONSTRAINT FK_Student_Class_Student_Id FOREIGN key (StudentId) REFERENCES Students(StudentId),
CONSTRAINT FK_Student_Class_Classes_Id FOREIGN key (ClassId) REFERENCES Classes(Id),
CONSTRAINT FK_Class_Expert_Id FOREIGN key (ExpertId) REFERENCES ExpertInfo(Id)
);

--
--Thong tin ho tro
--

CREATE TABLE CommentSupport
(
ID  number(10) not null PRIMARY KEY,
CommentName     VARCHAR2(50),
Desription      VARCHAR2(200),
DateCreate      date,
DateLastUpdate      date,
UserId          number(10),
StudentId       number(10),
CONSTRAINT FK_CommentSupport_Student_Id FOREIGN key (StudentId) REFERENCES Students(StudentId)
);

--
--Tao ra nhung truong thong tin tu tang
--
--Tao sequence cho bang Khoa hoc
--
CREATE SEQUENCE SEQ_COURSE
INCREMENT BY 1
START WITH 1
MAXVALUE 99999
NOCACHE
NOCYCLE;

--
--Tao sequence cho bang Chuyen gia
CREATE SEQUENCE SEQ_ExpertInfo
INCREMENT BY 1
START WITH 1
MAXVALUE 99999
NOCACHE
NOCYCLE;

--
--Tao sequence cho bang Status
--

CREATE SEQUENCE SEQ_Status
INCREMENT BY 1
START WITH 1
MAXVALUE 10
NOCACHE
NOCYCLE;

--
--Tao sequence cho bang Register
--
CREATE SEQUENCE SEQ_Register
INCREMENT BY 1
START WITH 1
MAXVALUE 20
NOCACHE
NOCYCLE;

--
--Tao sequence cho bang Classes
--
CREATE SEQUENCE SEQ_Class
INCREMENT BY 1
START WITH 1
MAXVALUE 99999
NOCACHE
NOCYCLE;

--
--Tao sequence cho bang Student_Class
--
CREATE SEQUENCE SEQ_StudentClass
INCREMENT BY 1
START WITH 1
MAXVALUE 99999
NOCACHE
NOCYCLE;

--
--Tao sequence cho bang Comment
--
CREATE SEQUENCE SEQ_Comment
INCREMENT BY 1
START WITH 1
MAXVALUE 99999
NOCACHE
NOCYCLE;

--
--Tao sequence cho bang Student
--
CREATE SEQUENCE SEQ_Student
INCREMENT BY 1
START WITH 1
MAXVALUE 99999
NOCACHE
NOCYCLE;
--
--Them thong tin cho bang khoa hoc
--
Select SEQ_COURSE.NEXTVAL from dual;

insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'C#.Net For Base',3200000,' ');
/
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'C#.Net For Developer',6800000,' ');
/
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'C#.Net For Developer',6800000,' ');
/
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'C#.Net For Advanced',6800000,' ');
/
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'ASP.NET for Developer',6800000,' ');
/
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'ASP.NET for Advanced',6800000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'Java for Base (Java Core)',3200000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'J2SE for Developer',6800000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'J2SE for Advanced',6800000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'J2EE for Developer',6800000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'Project Management',6800000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'Seo Adword',6800000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'DotNetLuke For Base',3200000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'DotNetLuke For Advance',6800000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'Oracle For Base',3200000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'Oracle for Advance',6800000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'SQL Server For Base',3200000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'SQL Server For Advance',6800000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'Sharepoint 2010 For Base',3200000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'Sharepoint 2010 For Advance',6800000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'Tester For Base',3200000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'Tester For Advance',6800000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'Linux For Base',3200000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'Linux For Advance',6800000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'Ajax & Jquery',6800000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'MVC Framework',6800000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'Entyti Framework',6800000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'LinQ',6800000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'C/C++ For Advance',6800000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'C/C++ For Base',3200000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'C/C++ For Developer',6800000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'Silverlight For Base',3200000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'Silverlight For Advance',6800000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'khac',6800000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'PHP For Base',3200000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'PHP For Developer',6800000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'Android for Base',3200000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'Android for Developer',6800000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'IOS for Base',3200000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'IOS for Developer',6800000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'Windows phone for Base',3200000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'Windows phone for Developer',6800000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'PHP For Advance',6800000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'J2EE  For Advance',6800000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'Vba for base',3200000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'Vba for Advance',6800000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'Webcentrer portal for base',3200000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'Webcentre portal for advance',6800000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'.Net for developer',6800000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'SQL for base (beginner)',3200000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'Dev+  - C#',6800000,' ');
insert into course(Id,CourseName,Price,CourseDescription) values(SEQ_COURSE.NEXTVAL,'Dev+ - java',6800000,' ');

Select 'Ok' from dual;

select * from course;

--
--Them thong tin cho nguon hoc vien
--
insert into RegisterPlace(Id,RegisterPlace,Description) values(SEQ_REGISTER.nextval,'Gọi điện thoại đến văn phòng',' ');
insert into RegisterPlace(Id,RegisterPlace,Description) values(SEQ_REGISTER.nextval,'Đăng ký qua cổng thông tin',' ');
insert into RegisterPlace(Id,RegisterPlace,Description) values(SEQ_REGISTER.nextval,'Yahoo',' ');
insert into RegisterPlace(Id,RegisterPlace,Description) values(SEQ_REGISTER.nextval,'Skype',' ');
insert into RegisterPlace(Id,RegisterPlace,Description) values(SEQ_REGISTER.nextval,'Facebook',' ');
insert into RegisterPlace(Id,RegisterPlace,Description) values(SEQ_REGISTER.nextval,'Cộng tác viên',' ');
insert into RegisterPlace(Id,RegisterPlace,Description) values(SEQ_REGISTER.nextval,'Bạn giới thiệu',' ');
insert into RegisterPlace(Id,RegisterPlace,Description) values(SEQ_REGISTER.nextval,'Diễn đàn, rao vặt',' ');
insert into RegisterPlace(Id,RegisterPlace,Description) values(SEQ_REGISTER.nextval,'Nguồn khác',' ');
Select 'Ok' from dual;
--
select * from RegisterPlace;
--
--delete from RegisterPlace;
--
--Thong tin chuyen gia
--

insert into ExpertInfo(Id,ExpertName,DateBirthday,Sex,Address,YearsExperience,Email) values(SEQ_EXPERTINFO.nextval,'Bùi Quang Đăng','01-05-1980',0,'Hải Dương',7,'dangbq@stanford.com.vn');
/
insert into ExpertInfo(Id,ExpertName,DateBirthday,Sex,Address,YearsExperience,Email) values(SEQ_EXPERTINFO.nextval,'Trần Quốc Việt','05-01-1981',0,'Hà Nội',6,'viettq84@gmail.com');
insert into ExpertInfo(Id,ExpertName,DateBirthday,Sex,Address,Description,YearsExperience,Email,Mobile) values(SEQ_EXPERTINFO.nextval,'Trịnh Văn Hùng','05-01-1982',0,'Hoàng Quốc Việt, Cầu Giấy, Hà Nội','',5,'hungtv8x@gmail.com',' ');
insert into ExpertInfo(Id,ExpertName,DateBirthday,Sex,Address,Description,YearsExperience,Email,Mobile) values(SEQ_EXPERTINFO.nextval,'Hồ Thị Ánh Tuyết','07-01-1983',1,'ngo165, Cau Giay, Ha Noi','',4,'hatcattrongxamac_199@gmail.com',' ');
insert into ExpertInfo(Id,ExpertName,DateBirthday,Sex,Address,Description,YearsExperience,Email,Mobile) values(SEQ_EXPERTINFO.nextval,'Phùng Văn Quyết','05-01-1984',0,'Từ Liêm, Hà Nội','',5,'quyetpvk49a1c@gmail.com',' ');
insert into ExpertInfo(Id,ExpertName,DateBirthday,Sex,Address,Description,YearsExperience,Email,Mobile) values(SEQ_EXPERTINFO.nextval,'Đào Trọng Duy','05-01-1985',0,'No.58A, Trai Gang Street, Hanoi','',7,'daoduy204@gmail.com',' ');
insert into ExpertInfo(Id,ExpertName,DateBirthday,Sex,Address,Description,YearsExperience,Email,Mobile) values(SEQ_EXPERTINFO.nextval,'Vũ Đình Vinh','05-10-1986',0,'Kim Bảng, Hà Nam','',4,'vuvinh2409@gmail.com',' ');
insert into ExpertInfo(Id,ExpertName,DateBirthday,Sex,Address,Description,YearsExperience,Email,Mobile) values(SEQ_EXPERTINFO.nextval,'Nguyễn Việt Dũng','05-12-1987',0,'','',7,'acc.vietdung@gmail.com',' ');
insert into ExpertInfo(Id,ExpertName,DateBirthday,Sex,Address,Description,YearsExperience,Email,Mobile) values(SEQ_EXPERTINFO.nextval,'Phan Văn Nguyên','06-09-1988',0,'Nam Định','',5,'pvnbk2006@gmail.com',' ');
insert into ExpertInfo(Id,ExpertName,DateBirthday,Sex,Address,Description,YearsExperience,Email,Mobile) values(SEQ_EXPERTINFO.nextval,'Hồ Thị Thu Hồng','08-10-1988',1,'145-Quan Nhan- Thanh Xuan- HN','',6,'hatmitduongtranphu@yahoo.com',' ');
insert into ExpertInfo(Id,ExpertName,DateBirthday,Sex,Address,Description,YearsExperience,Email,Mobile) values(SEQ_EXPERTINFO.nextval,'Hoàng Việt Dũng','04-10-1989',0,'Vinh Phuc','',5,'dzunghoang.cdt@gmail.com',' ');
Select 'Ok' from dual;
--
select * from EXPERTINFO;
--

--
--Them thong tin cho bang lop hoc
--
--delete from Classes;
--TRUNCATE 
Select * from ExpertInfo;
Select * from COURSE;
insert into Classes(Id,ClassName,FromDate,ToDate,PlaceTraining,CourseId,Description) values(SEQ_CLASS.nextval,'J021301CB','12-02-2013','17-04-2013','Stanford',10,null);

insert into Classes(Id,ClassName,FromDate,ToDate,PlaceTraining,CourseId,Description) values(SEQ_CLASS.nextval,'A021301Dev','27-02-2013','22-06-2013','Stanford',7,null);
insert into Classes(Id,ClassName,FromDate,ToDate,PlaceTraining,CourseId,Description) values(SEQ_CLASS.nextval,'HTML021301 - HV','02-05-2013','16-07-2013','Stanford',41,null);
insert into Classes(Id,ClassName,FromDate,ToDate,PlaceTraining,CourseId,Description) values(SEQ_CLASS.nextval,'L021301CB-HV','20-02-2013','19-04-2013','Stanford',30,null);
insert into Classes(Id,ClassName,FromDate,ToDate,PlaceTraining,CourseId,Description) values(SEQ_CLASS.nextval,'SP031301CB-HV','06-03-2013','16-01-2013','Stanford',26,null);
insert into Classes(Id,ClassName,FromDate,ToDate,PlaceTraining,CourseId,Description) values(SEQ_CLASS.nextval,'CS031301CB-HV','26-03-2013','05-11-2013','Stanford',5,null);
insert into Classes(Id,ClassName,FromDate,ToDate,PlaceTraining,CourseId,Description) values(SEQ_CLASS.nextval,'T041301CB','09-04-2013','09-05-2013','Stanford',28,null);
insert into Classes(Id,ClassName,FromDate,ToDate,PlaceTraining,CourseId,Description) values(SEQ_CLASS.nextval,'CS041301CB','05-04-2013','10-05-2013','Stanford',5,null);
insert into Classes(Id,ClassName,FromDate,ToDate,PlaceTraining,CourseId,Description) values(SEQ_CLASS.nextval,'C#.NET-CB','01-01-2013','30-12-2020','Stanford',5,null);
insert into Classes(Id,ClassName,FromDate,ToDate,PlaceTraining,CourseId,Description) values(SEQ_CLASS.nextval,'C#.NET-DEV','01-01-2013','30-12-2020','Stanford',6,null);
insert into Classes(Id,ClassName,FromDate,ToDate,PlaceTraining,CourseId,Description) values(SEQ_CLASS.nextval,'JAVA-CB','01-01-2013','30-12-2020','Stanford',10,null);
insert into Classes(Id,ClassName,FromDate,ToDate,PlaceTraining,CourseId,Description) values(SEQ_CLASS.nextval,'ANDROID-CB','01-01-2013','30-12-2020','Stanford',47,null);
insert into Classes(Id,ClassName,FromDate,ToDate,PlaceTraining,CourseId, Description) values(SEQ_CLASS.nextval,'CS051301CB','10-05-2013','01-07-2013','Stanford',5,null);
insert into Classes(Id,ClassName,FromDate,ToDate,PlaceTraining,CourseId,Description) values(SEQ_CLASS.nextval,'J051301CB','14-05-2013','08-08-2013','Stanford',10,null);
insert into Classes(Id,ClassName,FromDate,ToDate,PlaceTraining,CourseId,Description) values(SEQ_CLASS.nextval,'A051301Dev-HV','27-05-2013','27-07-2013','Stanford',7,null);
insert into Classes(Id,ClassName,FromDate,ToDate,PlaceTraining,CourseId,Description) values(SEQ_CLASS.nextval,'CS051302CB','31-05-2013','08-08-2013','Stanford',5,null);
insert into Classes(Id,ClassName,FromDate,ToDate,PlaceTraining,CourseId,Description) values(SEQ_CLASS.nextval,'JE061301Dev','31-05-2013','31-08-2013','Stanford',16,null);
insert into Classes(Id,ClassName,FromDate,ToDate,PlaceTraining,CourseId,Description) values(SEQ_CLASS.nextval,'J061301CB','20-01-2013','20-08-2013','Stanford',10,null);
insert into Classes(Id,ClassName,FromDate,ToDate,PlaceTraining,CourseId,Description) values(SEQ_CLASS.nextval,'VBA071301CB','09-07-2013','09-09-2013','Stanford',6,null);
insert into Classes(Id,ClassName,FromDate,ToDate,PlaceTraining,CourseId,Description) values(SEQ_CLASS.nextval,'CS061301CB','28-06-2013','17-08-2013','Stanford',5,null);
insert into Classes(Id,ClassName,FromDate,ToDate,PlaceTraining,CourseId,Description) values(SEQ_CLASS.nextval,'ORA071301CB','05-06-2013','05-09-2013','Stanford',22,null);
insert into Classes(Id,ClassName,FromDate,ToDate,PlaceTraining,CourseId,Description) values(SEQ_CLASS.nextval,'P071301CB','15-07-2013','10-08-2013','Stanford',45,null);
insert into Classes(Id,ClassName,FromDate,ToDate,PlaceTraining,CourseId,Description) values(SEQ_CLASS.nextval,'CS071301CB','22-07-2013','17-08-2013','Stanford',5,null);
insert into Classes(Id,ClassName,FromDate,ToDate,PlaceTraining,CourseId,Description) values(SEQ_CLASS.nextval,'CS071301DEV','19-07-2013','18-09-2013','Stanford',6,null);
insert into Classes(Id,ClassName,FromDate,ToDate,PlaceTraining,CourseId,Description) values(SEQ_CLASS.nextval,'VBA091301CB','16-09-2013','16-11-2013','Stanford',8,null);
insert into Classes(Id,ClassName,FromDate,ToDate,PlaceTraining,CourseId,Description) values(SEQ_CLASS.nextval,'CS091301CB','19-09-2013','18-11-2013','Stanford',5,null);
insert into Classes(Id,ClassName,FromDate,ToDate,PlaceTraining,CourseId,Description) values(SEQ_CLASS.nextval,'J091302CB','20-09-2013','20-12-2013','Stanford',10,null);
Select 'Ok' from dual;
--
select * from Classes;
--
--Them thong tin trang thai dang ky
--
insert into Status values(SEQ_STATUS.nextval,'Chua dang ky',null);
insert into Status values(SEQ_STATUS.nextval,'Da dang ky',null);
insert into Status values(SEQ_STATUS.nextval,'Dang hoc',null);
insert into Status values(SEQ_STATUS.nextval,'Da hoan thanh khoa hoc',null);
insert into Status values(SEQ_STATUS.nextval,'Bao luu',null);
--
select * from Status;

--
--Them thong tin sinh vien
--
select * from Students;
insert into Students(StudentId,StudendCode,FirstName,LastName,FullName,Sex,DateBirthday,Mobile,Phone,Email,Address,DateCreate,DateRegister,StatusId,StudentRegisterId) 
    values(SEQ_STUDENT.nextval,'SF000001','Tran','Quang Toan','Tran Quang Toan',0,'05-05-1999','0976001910',null,'toantranquang.1987@gmail.com','Hà Nội','20-09-2013','20-12-2013',2,2);
--
insert into Students(StudentId,StudendCode,FirstName,LastName,FullName,Sex,DateBirthday,Mobile,Phone,Email,Address,DateCreate,DateRegister,StatusId,StudentRegisterId) 
    values(SEQ_STUDENT.nextval,'SF000002','Nguyen','Trong Tung','Nguyen Trong Tung',0,'05-05-1998','1644682738',null,'trongtunght@gmail.com','Đồng Tháp','19-09-2013','20-12-2013',3,2);
--
insert into Students(StudentId,StudendCode,FirstName,LastName,FullName,Sex,DateBirthday,Mobile,Phone,Email,Address,DateCreate,DateRegister,StatusId,StudentRegisterId) 
    values(SEQ_STUDENT.nextval,'SF000003','Bui','Quoc Anh','Bui Quoc Anh',0,'05-01-1978','989865866',null,'anhbq2006@yahoo.com','Hà Nội','05-03-2013','09-01-2013',2,5);
--
insert into Students(StudentId,StudendCode,FirstName,LastName,FullName,Sex,DateBirthday,Mobile,Phone,Email,Address,DateCreate,DateRegister,StatusId,StudentRegisterId) 
    values(SEQ_STUDENT.nextval,'SF000004','Pham','Van Duong','Pham Van Duong',0,'01-01-1980','0904340089',null,'Khtc_mangluoi@yahoo.com.vn','Hà Nội','06-03-2013',null,4,2);
--
insert into Students(StudentId,StudendCode,FirstName,LastName,FullName,Sex,DateBirthday,Mobile,Phone,Email,Address,DateCreate,DateRegister,StatusId,StudentRegisterId) 
    values(SEQ_STUDENT.nextval,'SF000005','Nguyen','Dinh Thai','Nguyen Dinh Thai',0,'10-05-1982','0979 560 003',null,'dongcungle@gmail.com','Đồng Tháp','06-03-2013',null,4,5);
    /
insert into Students(StudentId,StudendCode,FirstName,LastName,FullName,Sex,DateBirthday,Mobile,Phone,Email,Address,DateCreate,DateRegister,StatusId,StudentRegisterId) 
    values(SEQ_STUDENT.nextval,'SF000006','Trần','Nhật Quang','Trần Nhật Quang',0,'10-05-1982','0979 560 003',null,'nhatquang@gmail.com','Hà Nội','09-04-2013','09-03-2013',4,5);
    /
insert into Students(StudentId,StudendCode,FirstName,LastName,FullName,Sex,DateBirthday,Mobile,Phone,Email,Address,DateCreate,DateRegister,StatusId,StudentRegisterId) 
    values(SEQ_STUDENT.nextval,'SF000007','Nguyen','Chung','Nguyễn Chung',0,'10-05-1982','0979 560 003',null,'nguyenchung@gmail.com','Hải Phòng','06-03-2013','06-03-2013',4,5);
    /
insert into Students(StudentId,StudendCode,FirstName,LastName,FullName,Sex,DateBirthday,Mobile,Phone,Email,Address,DateCreate,DateRegister,StatusId,StudentRegisterId) 
    values(SEQ_STUDENT.nextval,'SF000008','Đinh','Văn Mạnh','Đinh Văn Mạnh',0,'10-05-1982','0979 560 003',null,'dinhmanh@gmail.com','Đồng Tháp','06-03-2013','06-03-2013',4,3);
    /
insert into Students(StudentId,StudendCode,FirstName,LastName,FullName,Sex,DateBirthday,Mobile,Phone,Email,Address,DateCreate,DateRegister,StatusId,StudentRegisterId) 
    values(SEQ_STUDENT.nextval,'SF000009','Bùi','Thu Trang','Bùi Thu Trang',0,'10-05-1982','0979 560 003',null,'buitrang@gmail.com','Hà Nội','09-03-2013','09-03-2013',4,4);
    /
insert into Students(StudentId,StudendCode,FirstName,LastName,FullName,Sex,DateBirthday,Mobile,Phone,Email,Address,DateCreate,DateRegister,StatusId,StudentRegisterId) 
    values(SEQ_STUDENT.nextval,'SF000010','Trần','Hiền','Trần Thu Hiền',0,'10-05-1982','0979 560 003',null,'thuhien@gmail.com','Hải Dương','06-03-2013','06-03-2013',6,5);
    /
Select 'Ok' from dual;
/

select * from Student_Class;
Select StudentId from Students;

Select * from Classes;
Select * from Students order by StudendCode ASC;
Select * from ExpertInfo;

insert into Student_Class values(SEQ_STUDENTCLASS.nextval,2,2,3200000,3200000,6400000, 2);
insert into Student_Class values(SEQ_STUDENTCLASS.nextval,3,2,3200000,3200000,6400000, 3);
insert into Student_Class values(SEQ_STUDENTCLASS.nextval,4,3,6800000,6800000,13600000, 3);
insert into Student_Class values(SEQ_STUDENTCLASS.nextval,5,3,3200000,3200000,6400000, 4);
insert into Student_Class values(SEQ_STUDENTCLASS.nextval,6,4,3200000,6800000,10000000, 5);

insert into Student_Class values(SEQ_STUDENTCLASS.nextval,8,4,3200000,3200000,6400000, 2);
insert into Student_Class values(SEQ_STUDENTCLASS.nextval,2,2,3200000,3200000,6400000, 4);
insert into Student_Class values(SEQ_STUDENTCLASS.nextval,8,6,6800000,6800000,13600000, 5);
insert into Student_Class values(SEQ_STUDENTCLASS.nextval,9,3,3200000,3200000,6400000, 2);
insert into Student_Class values(SEQ_STUDENTCLASS.nextval,10,8,3200000,6800000,10000000, 4);
--
select * from CommentSupport;
insert into CommentSupport values(SEQ_Comment.nextval,'Vu Lan Huong','Goi dien','16-Sep-2013','16-Nov-2013',10,2);
insert into CommentSupport values(SEQ_Comment.nextval,'Nguyen Thi Loan','Goi dien','19-Sep-2013','18-Nov-2013',10,3);
insert into CommentSupport values(SEQ_Comment.nextval,'Tran Thi Thu Hang','Goi dien','20-Sep-2013','20-Dec-2013',10,3);
insert into CommentSupport values(SEQ_Comment.nextval,'Le Thi Ngat','Goi dien','16-Nov-2013','16-Nov-2014',10,4);
insert into CommentSupport values(SEQ_Comment.nextval,'Vu Lan Huong','Goi dien','16-Sep-2012','16-Nov-2013',10,5);
--

--Cau 1   

create or replace function LayMaSinhVien
RETURN VARCHAR2
IS
mamoi varchar2(10):='';
number_next number:=0;
BEGIN
Select MAX(TO_NUMBER(SUBSTR(STUDENDCODE,3,LENGTH(STUDENDCODE)))) + 1 INTO number_next from Students;

DBMS_OUTPUT.PUT_LINE(number_next);
 
Select 'SF' || LPAD(TO_CHAR(number_next),6,'0') INTO mamoi from dual;

DBMS_OUTPUT.PUT_LINE(mamoi);

RETURN mamoi;
END;

Select LayMaSinhVien from dual;

--Thay doi cau truc bang chuyen gia
alter table ExpertInfo add(ExpertCV VARCHAR2(500));
alter table ExpertInfo modify(ExpertCV VARCHAR2(1000));
alter table ExpertInfo drop(ExpertCV);

--Lay thong tin hoc vien tu theo ma SF000001  va SF000005 
select * from Students where StudendCode in ('SF000001', 'SF000005');
//
--Lay thong tin tu ma SF000010 den SF000020
select * from Students where StudendCode BETWEEN 'SF000004' and 'SF000008';

--Lay thong tin o Ha Noi, Ho Chi Minh, Chua tu Ha, Hai
select * from Students where Address = 'Hà Nội';
select * from Students where Address = 'Hồ Chí Minh';
select * from Students where Address Like '%Hà%';
select * from Students where Address Like '%Hải%';

--Lay thong tin hoc vien theo theo ma khoa hoc
Select * from COURSE;

Select * from Classes;

Select * from Students where StudentId in (

Select StudentId from Student_Class where ClassId in (
Select Id from Classes where COURSEID=&course
));


--Hien thi danh sach hoc vien theo nhom thong tin dia chi va sap xep theo thu tu a,b,c
select FullName,Address from Students group by Address,FullName order by Address;

--Lấy thông tin 1 danh sách có các thông tin như sau: Mã học viên, Tên học viên, Điện thoại, Email, Địa chỉ, Lớp học, Khóa học, Trạng thái đăng ký, Nguồn học viên trong cơ sở dữ liệu thiết kế.

select sv.StudendCode,sv.FullName,sv.Mobile,sv.Email,sv.Address,class.ClassName, c.CourseName,s.StatusName,r.RegisterPlace
from Student_Class sv_class join Students sv on sv_class.STUDENTID=sv.STUDENTID join Classes class on sv_class.CLASSID=class.ID 
join COURSE c on class.COURSEID= c.ID join Status s on (sv.STATUSID = s.Id) 
        join RegisterPlace r on (sv.StudentRegisterId=r.Id);
        
--Lấy thông tin 1 danh sách có thông tin Mã học viên với Tên lớp bằng dấu “-“, Tên học viên, Điện thoại, Email, Địa chỉ, Ngày tạo, Trạng thái đăng ký trong với 2 tháng 03/2013 và 05/2013.
Select a.StudendCode || '_' || c.ClassName,a.Mobile,a.Email,a.Address,a.DateCreate,b.StatusName
from students a join Status b on (a.StatusId = b.ID) join Student_Class sv_class on a.STUDENTID=sv_class.STUDENTID join Classes c on c.ID= sv_class.CLASSID
where DateRegister BETWEEN '01-03-2013' and '30-03-2013' or DateRegister BETWEEN '01-05-2013' and '30-05-2013';

Select * from Students;

--Tạo khung nhìn Thống kê số lượng học viên có trong từng lớp học và sắp xếp tên lớp học theo thứ tự a,b,c trong hệ thống..

create view ThongkeHocVienLophoc
as
Select c.ClassName, count(a.studentId) SoLuong from Students a 
join Student_Class b on a.StudentId=b.STUDENTID 
join  Classes c on b.ClassId=c.Id 
group by c.ClassName 
order by c.ClassName asc;

//
--Xem lai thong tin thong ke cua view
Select * from ThongkeHocVienLophoc;
//
--Tạo khung nhìn Thống kê số lượng học viên theo Khóa học có trong hệ thống và sắp xếp theo lớp có số lượng học viên giảm dần.

create view ThongkeHocVienKhoahoc
as
Select co.CourseName, c.ClassName,count(a.STUDENTID) SoLuong from Students a join Student_Class b on a.StudentId=b.STUDENTID
join Classes c on (b.CLASSID=c.Id) 
    join Course co on (c.COURSEID=co.Id) group by c.ClassName,co.CourseName order by c.ClassName desc;
    
--Xem thong tin cua view
Select * from ThongkeHocVienKhoahoc;

--Tạo khung nhìn Thống kê số lượng học viên theo trạng thái đăng ký và nguồn học viên trong hệ thống. Sau đó thực hiện sắp xếp theo số lượng học viên giảm dần.
create view ThongkeHocVienTheoNguon
as
Select r.RegisterPlace, count(a.studentId) SoluongHV from Students a 
join RegisterPlace r on (a.StudentRegisterId=r.Id) 
group by r.RegisterPlace order by SoluongHV desc;
  
--Xem thong ke theo nguon
Select * from ThongkeHocVienTheoNguon;

--drop view ThongkeHocVienTrangthai;

create view ThongkeHocVienTrangthai
as
Select b.StatusName, count(a.studentId) SoluongHV from Students a 
join Status b on (a.STATUSID = b.Id) 
group by b.StatusName order by SoluongHV desc;
--Xem thong ke theo trang thai
Select * from ThongkeHocVienTrangthai;

--Xử lý cập nhật học phí bằng PL/SQL
--Khai báo 1 cursor để chứa thông tin
Declare
tenKhoa varchar(150);
hocPhi number(12);
cursor curKhoaHoc is
Select CourseName, Price from COURSE;
Begin
--Mở cursor
Open curKhoaHoc;
--Đọc từng dòng để lấy thông tin trong cursor
LOOP
FETCH
curKhoaHoc into tenKhoa, hocPhi;
--In thông tin của biến lấy được
dbms_output.put_line('Ten khoa hoc: ' || tenKhoa
|| ', Hoc phi: ' || hocPhi);
If hocPhi < 4000000 then
UPDATE COURSE
SET Price = Price + 300000;
End If;
exit when curKhoaHoc%notfound;
END LOOP;
--Đóng cursor
Close curKhoaHoc;
End;

Create table Nhat_Ky
(
Id number(6) primary key,
Noi_Dung varchar2(500),
Hoc_Phi_Cu number(12),
Hoc_Phi_Moi number(12),
Ngay_Tao date
);

--Tạo seq cho nhật ký
CREATE SEQUENCE SEQ_NHATKY
INCREMENT BY 1
START WITH 1
MAXVALUE 99999
NOCACHE
NOCYCLE;

--Sử dụng trigger
CREATE OR REPLACE TRIGGER
Trig_TuDongGhiNhatKy
BEFORE DELETE OR INSERT OR UPDATE ON COURSE
FOR EACH ROW
WHEN (NEW.ID > 0)
DECLARE
BEGIN
dbms_output.put_line('Ghi nhat ky tu dong thanh cong');
Insert into Nhat_Ky values(SEQ_NHATKY.NextVal,
'Thay đổi thông tin khoá học: ' || :NEW.COURSENAME, :OLD.Price, :NEW.Price, Sysdate);
END;
        
