create table HocSinh(
MaHS varchar(45) primary key ,
TenHS varchar(45) ,
NgaySinh datetime,
Lop varchar(45),
GT varchar(45)
);
create table MonHoc(
MaMH varchar(45) primary key ,
TenMH varchar(45)
);
create table BangDiem(
MaHS varchar(45),
MaMH varchar(45),
DiemThi int,
NgayKT datetime,
primary key (MaHS,MaMH),
foreign key (MaHS) references HocSinh (MaHS),
foreign key (MaMH) references MonHoc (MaMH)

);
create table GiaoVien (
MaGV VARCHAR(20) PRIMARY KEY,
TenGV VARCHAR(20),
SDT VARCHAR(10)
);
alter table MonHoc 
add MaGV varchar (45) ;
alter table MonHoc 
ADD CONSTRAINT FK_MaGV FOREIGN KEY (MaGV) REFERENCES GiaoVien(MaGV);

