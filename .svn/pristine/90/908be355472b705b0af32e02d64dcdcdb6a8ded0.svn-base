--tao user
create user Test_HungNV_270620 IDENTIFIED by 123456;

grant create table, create session, create SEQUENCE, create trigger to Test_HungNV_270620;

grant connect, resource to Test_HungNV_270620;


--tao tablespace
create tablespace eTrainning
datafile 'C:\APP\VANHUNG\VIRTUAL\ORADATA\ORCL\eTrainning' size 2048M;


--tao cac bang
create table Khoa_Hoc
(
Id_KH number(6) primary key,
Ten_KH varchar2(100),
Thong_tin_KH varchar2(300),
Gia number(12)
);


create table Lop
(
Id_Lop number(6) primary key,
Ten_Lop varchar2(50),
Ngay_BD date,
Ngay_KT date,
Dia_chi varchar2(150),
Id_Chuyen_gia number(6),
Id_KH number(6)
);

create table Hoc_sinh
(
Id_HS number(6) primary key,
First_name varchar2(20),
Last_name varchar2(20),
Gioi_tinh varchar(4),
Ngay_sinh date,
Dien_thoai number(10),
Email varchar2(150),
Dia_chi varchar2(150),
Ngay_tao date,
Ngay_DK date,
Id_Lop number(6),
Id_TT number(6),
Id_Nguon_HS number(6)
);


create table Hocsinh_Lop
(
Id_HS number(6),
Id_Lop number(6),
constraint PK_HS_LOP primary key(Id_HS, Id_Lop) 
);


create table Trang_Thai
(
Id_TT number(6) primary key,
Thong_tin_TT varchar2(100),
id_HS number(6)
);

create table Nguon_HS
(
Id_Nguon_HS number(6) primary key,
Thong_tin_Nguon_HS varchar2(100),
Id_HS number(6)
);

create table Chuyen_gia
(
Id_Chuyen_gia number(6) primary key,
Ten_CG varchar2(50),
Gioi_tinh varchar(4),
Dia_chi varchar2(150), 
Kinh_nghiem number(2),
Email varchar2(150),
Dien_thoai number(10)
);

create table Tu_van
(
Id_TV  number(6) primary key,
Ten_TV varchar2(150),
Thong_tin varchar2(150),
Ngay_tao date,
Ngay_Cap_Nhat_Cuoi date,
Id_HS number(6)
);


--tao lien ket
alter table Lop
add constraint FK_LOP_KH_ID FOREIGN key (Id_KH) references Khoa_Hoc(Id_KH);

alter table Lop
add constraint FK_LOP_CHUYENGIA_ID foreign key(Id_Chuyen_gia) references Chuyen_gia(Id_Chuyen_gia);

alter table Hocsinh_Lop
add constraint FK_HSLOP_HS_ID foreign key(Id_HS) references Hoc_sinh(Id_HS);

alter table Hocsinh_Lop
add constraint FK_HSLOP_LOP_ID foreign key(Id_Lop) references Lop(Id_Lop);

alter table Hoc_sinh
add constraint FK_HS_TT_ID foreign key (Id_TT) references Trang_thai(Id_TT);

alter table Hoc_sinh
add constraint FK_HS_NGUONHS_ID foreign key(Id_Nguon_HS) references Nguon_HS(Id_Nguon_HS);

alter table Tu_van
add constraint FK_HS_TV_ID foreign key (Id_HS) references Hoc_sinh(Id_HS);

alter table Trang_thai
add constraint FK_TT_HS_ID foreign key (Id_HS) references Hoc_sinh(Id_HS);

alter table Nguon_HS
add constraint FK_NGUON_HS_ID foreign key(Id_HS) references Hoc_sinh(Id_HS);


--tao sequence
create sequence SEQ_KH
increment by 1
start with 1
minvalue 1
maxvalue 9999
nocycle
nocache;

create sequence SEQ_HS
increment by 1
start with 1
minvalue 1
maxvalue 9999
nocycle
nocache;

create sequence SEQ_LOP
increment by 1
start with 1
minvalue 1
maxvalue 9999
nocycle
nocache;

create sequence SEQ_HOCSINH_LOP
increment by 1
start with 1
minvalue 1
maxvalue 9999
nocycle
nocache;

create sequence SEQ_TT
increment by 1
start with 1
minvalue 1
maxvalue 9999
nocycle
nocache;

create sequence SEQ_NGUON_HS
increment by 1
start with 1
minvalue 1
maxvalue 9999
nocycle
nocache;

create sequence SEQ_CHUYEN_GIA
increment by 1
start with 1
minvalue 1
maxvalue 9999
nocycle
nocache;

create sequence SEQ_TU_VAN
increment by 1
start with 1
minvalue 1
maxvalue 9999
nocycle
nocache;




--cau 1:

Select 'SF' || LPAD(Max(To_Number(SubStr(Id_HS, 3, Length(Id_HS))))+1, 6,'0')
from Hoc_sinh;

alter table Chuyen_gia
add ExpertCV varchar2(500);

alter table Chuyen_gia
modify ExpertCV varchar2(1000);

alter table Chuyen_gia
drop column ExpertCV;

select * from Hoc_sinh 
where Id_HS in( 'SF000001' , 'SF000005');


select * from Hoc_sinh
where Id_HS between 'SF000010' and 'SF000020';

select * from Hoc_sinh
where Dia_chi = 'Ha Noi' or Dia_chi = 'Ho Chi Minh' or Dia_chi like '%Ha%' or
Dia_chi Like '%Hai%';

select * from Hoc_sinh
order by Dia_chi, last_name ;


--cau 2:
select Id_HS, First_name|| ' ' ||Last_name as Full_name, Dian_thoai, Dia_chi, Email, Ten_Lop, Ten_KH, Thong_tin_TT, Thong_tin_Nguon_HS
from Hoc_sinh hs
join Lop l on hs.Id_Lop = l.Id_Lop
join Khoa_hoc kh l.Id_KH = kh.Id_KH
join Trang_thai tt.Id_HS = hs.Id_HS
join Nguon_HS n n.Id_HS = hs.Id_HS;


create view vThong_ke
as
select Id_Lop, Ten_Lop, count(*) from Hoc_sinh
join Lop on Lop.Id_Lop = Hoc_sinh.Id_Lop
group by Id_Lop
order by Ten_Lop;

create view vThong_ke2
as
select Id_KH, count(*) from Hoc_sinh hs
join Lop l on l.Id_Lop = hs.Id_Lop
join Khoa_hoc kh on kh.Id_KH = l.Id_KH
group by Id_KH
order by count(*) desc;

create view vThong_ke3
as 
select Id_TT, Id_Nguon_HS, count(*) from Hoc_sinh
group by Id_TT, Id_Nguon_HS
order by count(*) desc;

Update table Khoa_hoc
set Gia = Gia + 300000
where Gia < 4000000;

create table Log
(
Id number(6) primary key,
Mo_ta varchar2(150),
Hoc_phi_cu number(12),
Hoc_phi_moi number(12)
);

create sequence SEQ_LOG
increment with 1
start by 1
minvalue 1
maxvalue 9999
nocycle
nocache;


create or replace trigger TRIG_LOG_H
before Update on Khoa_Hoc
for each row
when ( NEW.Id_KH is not null)
declare 
gia_moi number(12) :=0;
gia_cu number(12) :=0;
begin 
insert into Log(Id, Hoc_phi_cu, Hoc_phi_moi)
values (SEQ_LOG.nextval, Hoc_phi_cu=' || :OLD.Gia', Hoc_phi_moi=' || :NEW.Gia')
end;






