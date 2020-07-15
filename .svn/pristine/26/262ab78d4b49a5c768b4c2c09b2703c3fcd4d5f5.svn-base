drop table Phieu_muon_sach;
drop table Sach;
drop table Sinh_vien;
create table Sinh_vien(
Ma_SV varchar(50) PRIMARY KEY, 
Ho_ten varchar2(250),
Ngay_sinh date,
Dien_thoai number(10), 
Email varchar2(250),
Dia_chi varchar2(250));
insert into Sinh_vien(Ma_SV, Ho_ten, Ngay_sinh, Dien_thoai,Email,Dia_chi) 
values('SF001','Nguyen Tuan Ninh',to_date('25/10/1994','dd/MM/yyyy'),8997987,'linhnt1@gmail.com','Vinh Phuc');
insert into sinh_vien(Ma_SV, Ho_ten, Ngay_sinh, Dien_thoai,Email,Dia_chi)
values('SF002','Hoang Nam Khanh',to_date('16/10/1995','dd/mm/yyyy'),0941561775,'khanhhn@gmail.com','Thanh Hoa');
insert into Sinh_vien(Ma_SV, Ho_ten, Ngay_sinh, Dien_thoai,Email,Dia_chi)
values('SF003','?inh Th? ??m',to_date('24/04/1992','dd/mm/yy'),0973743322,'damdt@gmail.com','Bac Giang');
insert into Sinh_vien(Ma_SV, Ho_ten, Ngay_sinh, Dien_thoai,Email,Dia_chi)
values('SF004','Tr?nh Quang Trung',to_date('30/03/1997','dd/mm/yyyy'),092176311,'trungqt@gmail.com','Vinh Phuc');
insert into Sinh_vien(Ma_SV, Ho_ten, Ngay_sinh, Dien_thoai,Email,Dia_chi)
values('SF005','Nguy?n V?n Hùng',to_date('12/05/1997','dd/mm/yy'),0912846344,'hungnv@gmail.com','Phu Tho');
insert into Sinh_vien(Ma_SV, Ho_ten, Ngay_sinh, Dien_thoai,Email,Dia_chi)
values('SF006','Ngô Vi ??t', to_date('16/08/1993','dd/mm/yy'),0934635312,'datnv@gmail.com','Hung Yen');
insert into Sinh_vien(Ma_SV, Ho_ten, Ngay_sinh, Dien_thoai,Email,Dia_chi)
values('SF007','Nguy?n Th? Thu',to_date('20/07/1996','dd/MM/yyyy'),077164515,'thunt@gmail.com','Ha Noi');
insert into Sinh_vien(Ma_SV, Ho_ten, Ngay_sinh, Dien_thoai,Email,Dia_chi)
values('SF008','Tran Van Hieu', to_date('16/02/1994','dd/MM/yyyy'), 092836256,'hieutv@gmail.com','Hung Yen');
insert into sinh_vien(Ma_SV, Ho_ten, Ngay_sinh, Dien_thoai,Email,Dia_chi)
values('SF009','Nguyen Manh Hung',To_date('15/12/1997','dd/MM/yyyy'),098363653,'hungmn','Ha Noi');
insert into sinh_vien(Ma_SV, Ho_ten, Ngay_sinh, Dien_thoai,Email,Dia_chi)
values('SF010','Nguyen Van Duy',TO_DATE('30/08/1997','dd/MM/yyyy'),097463443,'duynv','Phu Tho');
create table Sach(
Ma_sach varchar(150)PRIMARY KEY,
Ten_sach varchar2(250),
So_trang number,
So_dau number,
Gia_mua float,
Mo_ta varchar2(250),
Ngay_mua date,
Chu_de varchar2(250)
);
insert into Sach(Ma_sach,Ten_sach, So_trang,so_dau, Gia_mua)
values('TCC','Toán cao c?p',350 ,100,150.000);
insert into Sach(Ma_sach,Ten_sach, So_trang,so_dau, Gia_mua)
values('TTHCM','T? t??ng H? Chi Minh',300,50,100.000);
insert into Sach(Ma_sach,Ten_sach, So_trang,so_dau, Gia_mua)
values('KTVM','Kinh t? V? Mô',500,80,120.000);
insert into Sach(Ma_sach,Ten_sach, So_trang,so_dau, Gia_mua)
VALUES('TA','Ng? pháp Ti?ng Anh c? b?n',500,150,180.000);
insert into Sach(Ma_sach,Ten_sach, So_trang,so_dau, Gia_mua)
values('CSDL','C? s? d? li?u',400,100,200.000);
insert into Sach(Ma_sach,Ten_sach, So_trang,so_dau, Gia_mua)
values('MMT','M?ng máy tính',450 ,160,90.000);
create table LichSu_MuonTra(
Ma_muon_sach varchar(50) Primary key,
Ma_SV varchar(50),
Ma_sach varchar(50),
So_luong number,
ngay_muon date,
ngay_tra date
);
ALTER TABLE lichsu_muontra add CONSTRAINT lichsu_muontra_FK_Ma_sach FOREIGN Key(Ma_sach) REFERENCES  Sach(Ma_sach) ;
AlTer Table lichsu_muontra ADD CONSTRAINT lichsu_muontra_FK_Ma_SV FOREIGN KEY(Ma_SV) REFERENCES Sinh_vien(Ma_SV);
insert into lichsu_muontra(Ma_muon_sach,Ma_SV,Ma_sach,So_luong,ngay_muon,ngay_tra)
values('NP001','SF001','TCC',1, TO_DATE('15/08/2019','dd/MM/yyyy'),TO_DATE('20/08/2019','dd/MM/yyyy'));

insert into lichsu_muontra(Ma_muon_sach,Ma_SV,Ma_sach,So_luong,ngay_muon,ngay_tra)
values('NP003','SF003','TTHCM',1, TO_DATE('17/08/2019','dd/MM/yyyy'),TO_DATE('20/08/2019','dd/MM/yyyy'));
insert into lichsu_muontra(Ma_muon_sach,Ma_SV,Ma_sach,So_luong,ngay_muon,ngay_tra)
values('NP005','SF005','KTVM',1,TO_DATE('16/08/2019 ','dd/MM/yyyy'), TO_DATE('28/08/2019','dd/MM/yyyy'));
insert into lichsu_muontra(Ma_muon_sach,Ma_SV,Ma_sach,So_luong,ngay_muon,ngay_tra)
values('NP002','SF001','KTVM',1,TO_DATE('15/08/2019','dd/MM/yyyy'),TO_DATE('25/08/2019','dd/MM/yyyy'));
INSERT into lichsu_muontra(Ma_muon_sach,Ma_SV,Ma_sach,So_luong,ngay_muon,ngay_tra)
values('NP004','SF003','TA',1,TO_DATE('17/08/2019','dd/MM/yyyy'),TO_DATE('22/08/2019','dd/MM/yyyy'));
insert into lichsu_muontra(Ma_muon_sach,Ma_SV,Ma_sach,So_luong,ngay_muon,ngay_tra)
values('NP006','SF001','TTHCM',1,TO_DATE('05/09/2019','dd/MM/yyyy'),TO_DATE('10/09/2019','dd/MM/yyyy'));
insert into lichsu_muontra(Ma_muon_sach,Ma_SV,Ma_sach,So_luong,ngay_muon,ngay_tra)
values('NP007','SF002','TCC',1,TO_DATE('11/09/2019','dd/MM/yyyy'),TO_DATE('16/09/2019','dd/MM/yyyy'));
insert into lichsu_muontra(Ma_muon_sach,Ma_SV,Ma_sach,So_luong,ngay_muon)
values('NP008','SF006','CSDL',1,TO_DATE('20/09/2019','dd/MM/yyyy'));
insert into lichsu_muontra(Ma_muon_sach,Ma_SV,Ma_sach,So_luong,ngay_muon)
values('NP009','SF007','CSDL',1,TO_DATE('25/09/2019','dd/MM/yyyy'));
insert into lichsu_muontra(Ma_muon_sach,Ma_SV,Ma_sach,So_luong,ngay_muon)
values('NP010','SF002','CSDL',1,TO_DATE('03/10/2019','dd/MM/yyyy'));


-- phan 2
--thuc hien lay thong tin gom : ma sach , ten sach , so trang, so dau sach, gia tri sach, ten chu de
select ma_sach,ten_sach,so_trang,so_dau, gia_mua,chu_de from sach;
-- thuc hien thong ke top 3 sach co gia tri cao nhat trong thu vien cua truong do tinh tren  tong dau sach
select sum(so_dau *gia_mua)gia_tri, ma_sach,so_dau from sach  group by ma_sach,so_dau order by gia_tri desc;

-- hien thi lich su cua sinh vien bao gom cac thong tin sau maSV , ho ten, dien thoai, email, ma sach, ten sach, so ngay muon
select ls.ma_sv,sv.ho_ten, sv.dien_thoai, sv.email, s.ma_sach, s.ten_sach ,ls.ngay_tra,ls.ngay_muon, 
(TO_DATE(ls.ngay_tra,'dd/MM/YYYY') - To_Date(ls.ngay_muon,'dd/MM/yyyy'))so_ngay_muon 
from lichsu_muontra ls
join sinh_vien sv
on sv.Ma_SV = ls.Ma_SV
join sach s
on ls.ma_sach = s.ma_sach
where ls.ngay_tra is not null;

-- thong ke danh sach sinh vien chua tra sach den ngay  01/10/2019
select * from lichsu_muontra ls join sinh_vien sv
on sv.ma_sv = ls.ma_sv
WHERE ls.ngay_muon <= to_date('01/10/2019','dd/MM/yyyy') 
and (ls.ngay_tra> to_date('01/10/2019','dd/MM/yyyy')
or ls.ngay_tra is null); 
select * from lichsu_muontra;
-- Th?ng kê danh sách các sinh viên và các ??u sách ??n h?n tr? th? vi?n.
 select sv.Ma_SV, sv.ho_ten, s.so_dau from sach s 
 join lichsu_muontra ls 
 on ls.ma_sach = s.ma_sach
 join Sinh_vien sv
 on sv.Ma_SV = ls.Ma_SV
 where ls.ngay_tra  is not null;
 --Th?ng kê các ??u sách mã có sinh viên m??n trong h? th?ng
 select DISTINCT s.so_dau, s.ten_sach, s.ma_sach ,sv.ho_ten from sach s 
 join lichsu_muontra ls 
 on ls.ma_sach = s.ma_sach 
 join sinh_vien sv
 on sv.Ma_SV = ls.Ma_SV
 where ls.ngay_muon is not null ;
 
 
 






 