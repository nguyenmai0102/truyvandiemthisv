 --  1. Liệt kê danh sách sinh viên, gồm các thông tin sau: Mã sinh viên, Họ sinh 
-- viên, Tên sinh viên, Học bổng. Danh sách sẽ được sắp xếp theo thứ tự Mã 
-- sinh viên tăng dần
select * from dmsv
order by dmsv.MaSV desc;

-- 2. Danh sách các sinh viên gồm thông tin sau: Mã sinh viên, họ tên sinh viên, 
-- Phái, Ngày sinh. Danh sách sẽ được sắp xếp theo thứ tự Nam/Nữ

 
select dmsv.maSV, dmsv.hoSv, dmsv.tensv, dmsv.phai, dmsv.ngaysinh
from dmsv
order by dmsv.phai desc;

-- 3. Thông tin các sinh viên gồm: Họ tên sinh viên, Ngày sinh, Học bổng. Thông 
-- tin sẽ được sắp xếp theo thứ tự Ngày sinh tăng dần và Học bổng giảm dần.

select dmsv.hosv, dmsv.tensv, dmsv.ngaysinh, dmsv.hocbong
from dmsv
order by dmsv.Masv and dmsv.hocbong desc;

-- 4. Danh sách các môn học có tên bắt đầu bằng chữ T, gồm các thông tin: Mã 
-- môn, Tên môn, Số tiết.

select * 
from dmmh
where dmmh.tenmh like 'T%';

-- 5.Liệt kê danh sách những sinh viên có chữ cái cuối cùng trong tên là I, gồm 
-- các thông tin: Họ tên sinh viên, Ngày sinh, Phái

select dmsv.hosv, dmsv.tensv, dmsv.ngaysinh, dmsv.phai
from dmsv
where dmsv.tensv like '%i';

-- 6.Danh sách những khoa có ký tự thứ hai của tên khoa có chứa chữ N, gồm 
-- các thông tin: Mã khoa, Tên khoa.

select dmkhoa.makhoa, dmkhoa.tenkhoa
from dmkhoa
where dmkhoa.tenkhoa like '%N%';

-- 7.Liệt kê những sinh viên mà họ có chứa chữ Thị.
select dmsv.HoSV
from dmsv
where dmsv.HoSV like '%thi%';

-- 8.Cho biết danh sách các sinh viên có học bổng lớn hơn 100,000, gồm các 
-- thông tin: Mã sinh viên, Họ tên sinh viên, Mã khoa, Học bổng. Danh sách sẽ
-- được sắp xếp theo thứ tự Mã khoa giảm dần


select dmsv.masv, dmsv.hosv, dmsv.tensv, dmkhoa.makhoa, dmsv.hocbong
from dmsv join dmkhoa on dmsv.makhoa = dmkhoa.makhoa
where dmsv.hocbong >100000 
order by dmkhoa.makhoa;

-- 9.Liệt kê các sinh viên có học bổng từ 150,000 trở lên và sinh ở Hà Nội, gồm 
-- các thông tin: Họ tên sinh viên, Mã khoa, Nơi sinh, Học bổng.
select dmsv.hosv, dmsv.tensv, dmsv.makhoa, dmsv.noisinh, dmsv.hocbong
from dmsv
where dmsv.hocbong>150000 and dmsv.NoiSinh like 'hanoi';
select * from dmsv;

-- 10.Danh sách các sinh viên của khoa Anh văn và khoa Vật lý, gồm các thông 
-- tin: Mã sinh viên, Mã khoa, Phái.
select dmsv.masv, dmkhoa.makhoa, dmsv.phai
from dmsv join dmkhoa on dmsv.makhoa = dmkhoa.makhoa
where dmkhoa.TenKhoa like 'anh van' or dmkhoa.tenkhoa = 'vat ly';

-- 11.Cho biết những sinh viên có ngày sinh từ ngày 01/01/1991 đến ngày 
-- 05/06/1992 gồm các thông tin: Mã sinh viên, Ngày sinh, Nơi sinh, Học 
-- bổng.
select dmsv.masv, dmsv.ngaysinh, dmsv.noisinh, dmsv.hocbong
from dmsv
where dmsv.ngaysinh between '1991-01-01' and '1992-06-05';

-- 12.Danh sách những sinh viên có học bổng từ 80.000 đến 150.000, gồm các 
-- thông tin: Mã sinh viên, Ngày sinh, Phái, Mã khoa.
select dmsv.masv, dmsv.ngaysinh, dmsv.phai, dmsv.makhoa
from dmsv
where dmsv.hocbong between '80.000' and '150.000';

-- 13.Cho biết những môn học có số tiết lớn hơn 30 và nhỏ hơn 45, gồm các thông 
-- tin: Mã môn học, Tên môn học, Số tiết.
select *
from dmmh
where dmmh.sotiet between '30' and '45';

-- 14.Liệt kê những sinh viên nam của khoa Anh văn và khoa tin học, gồm các 
-- thông tin: Mã sinh viên, Họ tên sinh viên, tên khoa, Phái.
select dmsv.masv, dmsv.hosv, dmsv.tensv, dmkhoa.tenkhoa, dmsv.phai 
from dmsv join dmkhoa on dmsv.makhoa = dmsv.makhoa
where dmsv.phai like '%nam%';

-- 15.Liệt kê những sinh viên nữ, tên có chứa chữ N
select dmsv.tensv
from dmsv
where dmsv.TenSV like  '%N%';

-- 16.Danh sách sinh viên có nơi sinh ở Hà Nội và sinh vào tháng 02, gồm các 
-- thông tin: Họ sinh viên, Tên sinh viên, Nơi sinh, Ngày sinh.

select dmsv.hosv, dmsv.tensv, dmsv.noisinh, dmsv.ngaysinh
from dmsv
where month(dmsv.ngaysinh) = 2;

-- 17.Cho biết những sinh viên có tuổi lớn hơn 20, thông tin gồm: Họ tên sinh 
-- viên, Tuổi,Học bổng.
select dmsv.hosv, dmsv.tensv, dmsv.ngaysinh, dmsv.hocbong, (year(now())-year(dmsv.ngaysinh)) as tuoi
from dmsv
where (year(now())-year(dmsv.ngaysinh))>20;

-- 18.Danh sách những sinh viên có tuổi từ 20 đến 25, thông tin gồm: Họ tên sinh 
-- viên, Tuổi, Tên khoa.
select
from