
-- Veritabanının oluşturulması 

/*
Create Database kutuphane
*/

-- kitaplar isimli tablonun oluşturulması

/* 
Create Table kitaplar(
kitap_id int primary key auto_increment,
tur_id tinyint not null,
kitap_adi varchar(40) not null,
yazar varchar(40) not null,
yayinevi varchar(40) not null,
sayfa_sayisi smallint not null
);
*/

-- kitap_turleri isimli tablonun oluşturulması

/*
Create Table kitap_turleri(
tur_id tinyint primary key auto_increment,
tur_adi varchar(40) not null
);
*/

-- ogrenciler isimli tablonun oluşturulması

/*
Create Table ogrenciler(
ogrenci_no int primary key,
ad varchar(25) not null,
soyad varchar(25) not null,
sinif tinyint not null,
cinsiyet varchar(7) not null,
telefon varchar(12) not null
);
*/

-- odunc_kitaplar isimli tablonun oluşturulması

/*
Create Table odunc_kitaplar(
id int primary key auto_increment,
ogrenci_no int not null,
kitap_id int not null,
verilis_tarihi date not null,
teslim_tarihi date,
aciklama varchar(200) 
);
*/

-- kitap_turleri tablosuna veri girişi yapılması

/*
INSERT INTO kitap_turleri(tur_adi)
VALUES ("Roman"),
("Hikaye"),
("Şiir"),
("Gezi"),
("Çocuk"),
("Kişisel Gelişim"),
("Sağlık")
*/

-- kitaplar tablosuna veri girişi yapılması

/*
INSERT INTO kitaplar(tur_id,kitap_adi,yazar,yayinevi,sayfa_sayisi)
VALUES (1,"Kuyucaklı Yusuf","Sabahattin Ali","Deneme",221),
(1,"Suç ve Ceza","Dostoyevski","Deneme",687),
(1,"Beyaz Gemi","Cengiz Aytmatov","Deneme",168),
(1,"Sinekli Bakkal","Halide Edip Adıvar","Örnek",476),
(1,"Çalıkuşu","Reşat Nuri Güntekin","Örnek",544),
(1,"Sefiller","Victor Hugo","Örnek",520),
(2,"Kaşağı","Ömer Seyfettin","Deneme",176),
(1,"Yaban","Yakup Kadri Karaosmanoğlu","Deneme",215),
(1,"Ölü Canlar","Gogol","Örnek",484),
(3,"Otuz Beş Yaş","Cahit Sıtkı Tarancı","Örnek",120),
(3,"Safahat","Mehmet Akif Ersoy","Örnek",560),
(4,"Anadolu Notları","Reşat Nuri Güntekin","Örnek",287)
*/


-- ogrenciler tablosuna veri girişi yapılması

/*
INSERT INTO ogrenciler(ogrenci_no,ad,soyad,sinif,cinsiyet,telefon)
VALUES (145,"Esat","E.","11","Erkek","066378412"),
(460,"Yakup","B.","11","Erkek","086306894"),
(344,"Esra","Ö.","10","Kız","036653246"),
(99,"Ayşe","Y.","9","Kız","567854333"),
(222,"Zeynep","Ö.","10","Kız","04678433568"),
(188,"Ali","K.","9","Erkek","076665332"),
(985,"Mehmet","D.","12","Erkek","0188654678"),
(150,"Emirhan","Ç.","11","Erkek","0765434566"),
(461,"Serpil","K.","10","Kız","08876543456")
*/


-- odunc_kitaplar tablosuna veri girişi yapılması

/*
INSERT INTO odunc_kitaplar(ogrenci_no,kitap_id,verilis_tarihi)
VALUES (145,3,"2022-02-09"),
(222,2,"2022-02-09"),
(188,12,"2022-02-09"),
(985,1,"2022-02-16"),
(461,6,"2022-02-18"),
(344,8,"2022-02-18") -- buraya hatalı veri yazılmamalı
*/

-- SORGULAR VE ALT SORGULAR

-- 1.Roman türünde kitapların listesini getiren sorgu
/*
Select * from kitaplar
Where tur_id=(Select tur_id from kitap_turleri where tur_adi="Roman")
*/

-- 2.Şiir türünde ödünç alınan kitapları listele
/*
Select * from odunc_kitaplar
Where kitap_id IN(Select kitap_id from kitaplar
Where tur_id= (Select tur_id from kitap_turleri Where tur_adi="Şiir"))
*/

-- Tabloları Birleştirme ( Inner Join )
/*
Select o.id,ogr.ogrenci_no,ogr.ad,ogr.soyad,k.kitap_adi,k.yazar,o.verilis_tarihi,o.teslim_tarihi
From odunc_kitaplar as o
INNER JOIN kitaplar as k on o.kitap_id=k.kitap_id
INNER JOIN ogrenciler as ogr on o.ogrenci_no=ogr.ogrenci_no
*/



