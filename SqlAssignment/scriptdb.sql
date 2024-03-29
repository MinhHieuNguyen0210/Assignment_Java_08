create database quanlybanhang;

use quanlybanhang;

create table KhachHang(
	MaKH char(4) primary key,
    HoTen nvarchar(45),
    DiaChi varchar(50),
    SoDT bigint,
    DoanhSo double
);
drop table KhachHang;
-- KHACHHANG
insert into khachhang values('KH01','Nguyen Van A','731 Tran Hung Dao, Q5, TpHCM','8823451',13060000);
insert into khachhang values('KH02','Tran Ngoc Han','23/5 Nguyen Trai, Q5, TpHCM','908256478',280000);
insert into khachhang values('KH03','Tran Ngoc Linh','45 Nguyen Canh Chan, Q1, TpHCM','938776266',3860000);
insert into khachhang values('KH04','Tran Minh Long','50/34 Le Dai Hanh, Q10, TpHCM','917325476',250000);
insert into khachhang values('KH05','Le Nhat Minh','34 Truong Dinh, Q3, TpHCM','8246108',21000);
insert into khachhang values('KH06','Le Hoai Thuong','227 Nguyen Van Cu, Q5, TpHCM','8631738',915000);
insert into khachhang values('KH07','Nguyen Van Tam','32/3 Tran Binh Trong, Q5, TpHCM','916783565',12500);
insert into khachhang values('KH08','Phan Thi Thanh','45/2 An Duong Vuong, Q5, TpHCM','938435756',365000);
insert into khachhang values('KH09','Le Ha Vinh','873 Le Hong Phong, Q5, TpHCM','8654763',70000);
insert into khachhang values('KH10','Ha Duy Lap','34/34B Nguyen Trai, Q1, TpHCM','8768904',67500);

create table NhanVien (
	MaNV char(4) primary key,
    HoTen nvarchar(45),
    SoDT varchar(15)
    );
    
-- NHANVIEN
insert into nhanvien values('NV01','Nguyen Nhu Nhut','927345678');
insert into nhanvien values('NV02','Le Thi Phi Yen','987567390');
insert into nhanvien values('NV03','Nguyen Van B','997047382');
insert into nhanvien values('NV04','Ngo Thanh Tuan','913758498');
insert into nhanvien values('NV05','Nguyen Thi Truc Thanh','918590387');

create table SanPham(
	MaSP char(4) not null primary key,
    TenSP nvarchar(45),
    DVT varchar(15),
    NuocSX varchar(30),
    Gia double
);

-- SANPHAM
insert into sanpham values('BC01','But chi','cay','Singapore',3000);
insert into sanpham values('BC02','But chi','cay','Singapore',5000);
insert into sanpham values('BC03','But chi','cay','Viet Nam',3500);
insert into sanpham values('BC04','But chi','hop','Viet Nam',30000);
insert into sanpham values('BB01','But bi','cay','Viet Nam',5000);
insert into sanpham values('BB02','But bi','cay','Trung Quoc',7000);
insert into sanpham values('BB03','But bi','hop','Thai Lan',100000);
insert into sanpham values('TV01','Tap 100 giay mong','quyen','Trung Quoc',2500);
insert into sanpham values('TV02','Tap 200 giay mong','quyen','Trung Quoc',4500);
insert into sanpham values('TV03','Tap 100 giay tot','quyen','Viet Nam',3000);
insert into sanpham values('TV04','Tap 200 giay tot','quyen','Viet Nam',5500);
insert into sanpham values('TV05','Tap 100 trang','chuc','Viet Nam',23000);
insert into sanpham values('TV06','Tap 200 trang','chuc','Viet Nam',53000);
insert into sanpham values('TV07','Tap 100 trang','chuc','Trung Quoc',34000);
insert into sanpham values('ST01','So tay 500 trang','quyen','Trung Quoc',40000);
insert into sanpham values('ST02','So tay loai 1','quyen','Viet Nam',55000);
insert into sanpham values('ST03','So tay loai 2','quyen','Viet Nam',51000);
insert into sanpham values('ST04','So tay','quyen','Thai Lan',55000);
insert into sanpham values('ST05','So tay mong','quyen','Thai Lan',20000);
insert into sanpham values('ST06','Phan viet bang','hop','Viet Nam',5000);
insert into sanpham values('ST07','Phan khong bui','hop','Viet Nam',7000);
insert into sanpham values('ST08','Bong bang','cai','Viet Nam',1000);
insert into sanpham values('ST09','But long','cay','Viet Nam',5000);
insert into sanpham values('ST10','But long','cay','Trung Quoc',7000);

create table HoaDon(
	SoHD char(4) not null primary key,
    NgHD date,
    MaKH char(4),
    MaNV char(4),
	TriGia double
);
alter table HoaDon add constraint FK_HD_KH foreign key (MaKH) references KhachHang(MaKH);
alter table HoaDon add constraint FK_HD_NV foreign key (MaNV) references NhanVien(MaNV);
-- drop table HoaDon;
-- HOADON
insert into hoadon values(1001,'2006-03-27','KH01','NV01',320000);
insert into hoadon values(1002,'2006-08-12','KH01','NV02',840000);
insert into hoadon values(1003,'2006-08-23','KH02','NV01',100000);
insert into hoadon values(1004,'2006-01-09','KH02','NV01',180000);
insert into hoadon values(1005,'2006-10-20','KH01','NV02',3800000);
insert into hoadon values(1006,'2006-10-16','KH01','NV03',2430000);
insert into hoadon values(1007,'2006-10-28','KH03','NV03',510000);
insert into hoadon values(1008,'2006-10-28','KH01','NV03',440000);
insert into hoadon values(1009,'2006-10-28','KH03','NV04',200000);
insert into hoadon values(1010,'2006-11-01','KH01','NV01',5200000);
insert into hoadon values(1011,'2006-11-04','KH04','NV03',250000);
insert into hoadon values(1012,'2006-11-30','KH05','NV03',21000);
insert into hoadon values(1013,'2006-12-12','KH06','NV01',5000);
insert into hoadon values(1014,'2006-12-13','KH03','NV02',3150000);
insert into hoadon values(1015,'2007-01-01','KH06','NV01',910000);
insert into hoadon values(1016,'2007-01-01','KH07','NV02',12500);
insert into hoadon values(1017,'2007-01-02','KH08','NV03',35000);
insert into hoadon values(1018,'2007-01-13','KH08','NV03',330000);
insert into hoadon values(1019,'2007-01-13','KH01','NV03',30000);
insert into hoadon values(1020,'2007-01-14','KH09','NV04',70000);
insert into hoadon values(1021,'2007-01-16','KH10','NV03',67500);
insert into hoadon values(1022,'2007-01-16',Null,'NV03',7000);
insert into hoadon values(1023,'2007-01-17',Null,'NV01',330000);

create table CTHD(
	SoHD char(4),
    MaSP char(4),
    primary key(SoHD, MaSP),
    SoLuong int
);
-- drop table CTHD;
alter table CTHD add constraint FK_CTHD_SP_HD foreign key (SoHD) references HoaDon(SoHD);
alter table CTHD add constraint FK_CTHD_SP foreign key (MaSP) references SanPham(MaSP);

-- CTHD
insert into cthd values(1001,'TV02',10);
insert into cthd values(1001,'ST01',5);
insert into cthd values(1001,'BC01',5);
insert into cthd values(1001,'BC02',10);
insert into cthd values(1001,'ST08',10);
insert into cthd values(1002,'BC04',20);
insert into cthd values(1002,'BB01',20);
insert into cthd values(1002,'BB02',20);
insert into cthd values(1003,'BB03',10);
insert into cthd values(1004,'TV01',20);
insert into cthd values(1004,'TV02',10);
insert into cthd values(1004,'TV03',10);
insert into cthd values(1004,'TV04',10);
insert into cthd values(1005,'TV05',50);
insert into cthd values(1005,'TV06',50);
insert into cthd values(1006,'TV07',20);
insert into cthd values(1006,'ST01',30);
insert into cthd values(1006,'ST02',10);
insert into cthd values(1007,'ST03',10);
insert into cthd values(1008,'ST04',8);
insert into cthd values(1009,'ST05',10);
insert into cthd values(1010,'TV07',50);
insert into cthd values(1010,'ST07',50);
insert into cthd values(1010,'ST08',100);
insert into cthd values(1010,'ST04',50);
insert into cthd values(1010,'TV03',100);
insert into cthd values(1011,'ST06',50);
insert into cthd values(1012,'ST07',3);
insert into cthd values(1013,'ST08',5);
insert into cthd values(1014,'BC02',80);
insert into cthd values(1014,'BB02',100);
insert into cthd values(1014,'BC04',60);
insert into cthd values(1014,'BB01',50);
insert into cthd values(1015,'BB02',30);
insert into cthd values(1015,'BB03',7);
insert into cthd values(1016,'TV01',5);
insert into cthd values(1017,'TV02',1);
insert into cthd values(1017,'TV03',1);
insert into cthd values(1017,'TV04',5);
insert into cthd values(1018,'ST04',6);
insert into cthd values(1019,'ST05',1);
insert into cthd values(1019,'ST06',2);
insert into cthd values(1020,'ST07',10);
insert into cthd values(1021,'ST08',5);
insert into cthd values(1021,'TV01',7);
insert into cthd values(1021,'TV02',10);
insert into cthd values(1022,'ST07',1);
insert into cthd values(1023,'ST04',6);

-- I
-- 1.In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất.
select sp.MaSP, sp.TenSP
from sanpham sp
where NuocSX ="Trung Quoc"
-- 2. In ra danh sách các sản phẩm (MASP, TENSP) có đơn vị tính là “cay”, ”quyen”.
select sp.MaSP, sp.TenSP
from sanpham sp
where sp.DVT = "cay" or sp.DVT ="quyen"
-- 3. In ra danh sách các sản phẩm (MASP,TENSP) có mã sản phẩm bắt đầu là “B” và kết
-- thúc là “01”.
select sp.MaSP, sp.TenSP
from sanpham sp
where sp.MaSP like "B%01"
-- 4. In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quốc” sản xuất có giá từ
-- 30.000 đến 40.000.
select sp.MaSP, sp.TenSP
from sanpham sp
where sp.NuocSX ="Trung Quoc" and sp.Gia between 30000 and 40000
-- 5. In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” hoặc “Thai Lan” sản
-- xuất có giá từ 30.000 đến 40.000.
select sp.MaSP, sp.TenSP
from sanpham sp
where sp.NuocSX ="Trung Quoc" or sp.NuocSX ="Thai Lan"
and sp.Gia between 30000 and 40000
-- 6. In ra các số hóa đơn, trị giá hóa đơn bán ra trong ngày 1/1/2007 và ngày 2/1/2007.
select hd.SoHD, hd.TriGia
from HoaDon hd
where hd.NgHD ="2007-01-01" or hd.NgHD = "2007-01-02"
-- 7. In ra các số hóa đơn, trị giá hóa đơn trong tháng 1/2007, sắp xếp theo ngày (tăng
-- dần) và trị giá của hóa đơn (giảm dần).
select hd.SoHD, hd.TriGia
from HoaDon hd
where month(hd.NgHD) = 1 and year(hd.NgHD) = 2007
order by hd.TriGia desc

-- II
-- 1. In ra danh sách các khách hàng (MAKH, HOTEN) đã mua hàng trong ngày 1/1/2007.
select 	kh.MaKH, kh.HoTen
from KhachHang kh join HoaDon hd on kh.MaKH = hd.MaKH 
where hd.NgHD ="2007-01-01"
-- 2. In ra số hóa đơn, trị giá các hóa đơn do nhân viên có tên “Nguyen Van B” lập trong
-- ngày 28/10/2006.
select hd.SoHD, hd.TriGia
from NhanVien nv join HoaDon hd on nv.MaNV = hd.MaNV 
where nv.HoTen ="Nguyen Van B" and hd.NgHD = "2006-10-28"
-- 3. Tìm các số hóa đơn đã mua sản phẩm có mã số “BB01” hoặc “BB02”.
select hd.SoHD
from HoaDon hd join CTHD ct on hd.SoHD = ct.SoHD 
where ct.MaSP ="BB01" or ct.MaSP ="BB02"

-- 4. Tìm các số hóa đơn đã mua sản phẩm có mã số “BB01” hoặc “BB02”, mỗi sản phẩm
-- mua với số lượng từ 10 đến 20.
select hd.SoHD
from HoaDon hd join CTHD ct on hd.SoHD = ct.SoHD 
where ct.MaSP ="BB01" or ct.MaSP ="BB02"
and ct.SoLuong between 10 and 20
-- 5. Cho biết trị giá hóa đơn cao nhất, thấp nhất là bao nhiêu ?
select max(hd.TriGia) as TriGiaHDCaoNhat, min(hd.TriGia) as TriGiaHDThapNhat
from HoaDon hd
-- 6. Trị giá trung bình của tất cả các hóa đơn được bán ra trong năm 2006 là bao nhiêu?
select avg(hd.TriGia) as TriGiaTrungBinh
from HoaDon hd
where year(hd.NgHD) = 2006;
-- 7. Tính doanh thu bán hàng trong năm 2006.
select sum(hd.TriGia) DoanhThu
from HoaDon hd
where year(hd.NgHD) = 2006;
-- 8. In ra danh sách 3 khách hàng (MAKH, HOTEN) có doanh số cao nhất.
select kh.MaKH, kh.HoTen
from KhachHang kh
order by kh.DoanhSo DESC 
limit 3 
-- III 
-- 1. Tính tổng số sản phẩm do “Trung Quoc” sản xuất.
select count(MaSP) TongSoSanPham
from SanPham 
where NuocSX ="Trung Quoc"
-- 2. Tính tổng số sản phẩm của từng nước sản xuất.
select NuocSX, count(MaSP) as TongSP
from SanPham
group by NuocSX
-- 3. Với từng nước sản xuất, tìm giá bán cao nhất, thấp nhất, trung bình của các sản
-- phẩm.
select NuocSX, max(Gia) as GiaCaoNhat, min(Gia)GiaThapNhat, avg(Gia)GiaTrungBinh
from SanPham
group by NuocSX
-- 4. Tính doanh thu bán hàng mỗi ngày.