use bt1 ; 

create table KHACHHANG (
	MAKH char(4), 
    HOTEN varchar(40),
    DCHI varchar(50),
    SODT varchar(20),
    NGSINH date,
    NGDK date, 
    DOANHSO decimal(9,3) , 
    primary key (MAKH)
); 
create table NHANVIEN(
	MANV char(4),
    HOTEN varchar(40), 
    SODT varchar(20), 
    NGVL date,
    primary key (MANV)
) ; 
create table SANPHAM(
	MASP char(4), 
    TENSP varchar(40), 
    DVT varchar(20),
    NUOCSX varchar(20),
    GIA decimal(9,3), 
    primary key (MASP)
) ; 

create table HOADON(
	SOHD int, 
    NGHD date, 
    MAKH char(4),
    MANV char(4),
    TRIGIA decimal(9,3), 
    primary key (SOHD),
    foreign key (MAKH) references KHACHHANG(MAKH), 
    foreign key (MANV) references NHANVIEN(MANV)
);
create table CTHD (
	SOHD int,
    MASP char(4),
    SL int,
    foreign key (SOHD) references HOADON(SOHD), 
    foreign key (MASP) references SANPHAM(MASP)
);