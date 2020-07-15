--Sinh ma tu dong dang chuoi
Select 'SF' ||  LPAD(Max(To_Number(SubStr(Ma_SV, 3, Length(Ma_SV))))+1,
6,'0') 
from Sinh_Vien;

Select Length(To_Char(Max(To_Number(SubStr(Ma_SV, 3, Length(Ma_SV)))) + 1))
from Sinh_vien;

Insert into Sinh_Vien(Ma_SV, Ho_ten, Email, Dia_chi) 
values('SF009', 'Le Minh Ha', 'minhha@gmail.com', 'Ha Noi');

Select Ma_SV, Ho_ten, Case Gioi_tinh when '1' then 'Nu'
                            when '0' then 'Nam'
                            else 'Khong xac dinh' end Gioi_tinh, 
Dien_thoai, Email, Dia_Chi
from Sinh_Vien;
--Su dung ham decode
Select Ma_SV, Ho_ten, Decode(Gioi_tinh, '1', 'Nu',
                            '0', 'Nam','Khong xac dinh') Gioi_tinh, 
Dien_thoai, Email, Dia_Chi
from Sinh_Vien;
