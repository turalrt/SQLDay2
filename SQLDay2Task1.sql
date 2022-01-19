--Market adli Database yaradin
create database Market
use Market

--Icinde Products Table-i yaradin.Product table-inda Id,Name,Price columnlari olsun
create table Products
(
	 Id int,
	 Name nvarchar(25),
	 Price money
)

--Products table-na yeni bir Brand columnu elave edin
alter table Products
add Brand nvarchar(50)

--Products table-a value-lar insert edin (10-15 dene product datasi kifayetdir)
insert into Products
values(1, 'Kolbasa', 15, 'Servelat'),
(2, 'Sosiska', 11, 'Sevimli Dad'),
(3, 'Pendir', 8, 'Canaq'),
(4, 'Sud', 3, 'Pinar'),
(5, 'Icki', 2, 'Cola'),
(6, 'Icki', 2, 'Fanta'),
(7, 'Icki', 1, 'Sirab'),
(8, 'Yag', 7, 'Seba'),
(9, 'Mayonez', 6.5, 'Calve'),
(10, 'Smetan', 4, 'Domik v Derevne'),
(11, 'Tursu', 5, 'Bagdan')

--AVERAGE PRICE
Select AVG(Price) From Products

--Qiymeti Productlarin price-larinin average-den kicik olan Products datalarinin siyahisini getiren query yazin
Select * From Products Where Price < (Select AVG(Price) From Products)

--Qiymeti 10-dan yuxari olan Product datalarinin siyahisini getiren query yazin
Select * From Products Where Price > 10

--Brand uzunlugu 5-den boyuk olan Productlarin siyahisini getiren query.Gelen datalarda Mehsulun adi ve Brand adi 1 columnda gorsensin ve Column adi ProductInfo olsun (dersdeki name ve surname-i fullname kimi gostermeye uygun)
Select Id, (Name+' '+Brand) 'ProductInfo', Price From Products Where LEN(Brand)>5




