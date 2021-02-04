--1
CREATE TABLE Categories(
	CateID int IDENTITY(1,1) PRIMARY KEY,
	CateName Nvarchar(255) NOT NULL,
	Description1 Nvarchar(255)
);
--2
CREATE TABLE Parts(
	PartID int IDENTITY(1,1) PRIMARY KEY,
	PartName Nvarchar(255) NOT NULL,
	CateID int NOT NULL FOREIGN KEY REFERENCES Categories(CateID),
	Description1 Nvarchar(255),
	Price  money check(price>0),
	Quantity int NULL,
	Warranty int NULL,
	Photo nvarchar(255) NULL
);
Drop Table Categories;
Drop Table Parts;

--2
INSERT INTO Categories(CateName,Description1) 
VALUES('ram','DR8'),
('cpu','i7'),
('HDD','128GB');

SELECT * FROM Categories
GO

--3
INSERT INTO Parts(PartName,CateID,Description1,Price,Quantity,Warranty,Photo) 
VALUES
('ram',1,'RD7',1000,10,12,'jpg'),
('ram2',1,'RD8',100,11,13,'gpg'),
('ram3',1,'RD9',10000,12,14,'png');

SELECT * FROM  Parts
GO
--4
SELECT * FROM Parts WHERE  Price > 100; 

--5 liệt kê các thanh phần danh sách cpu
SELECT * FROM Categories WHERE CateName LIKE N'CPU';
GO


--6. Tạo một dạng xem Parts chứa các thông tin sau (PartID, PartName, CateName, Giá, Số lượng) từ bảng Bộ phận và Danh mục.
CREATE VIEW V_Parts AS
SELECT P.PartID, P.PartName, C.CateName, P.Price, P.Quantity
FROM Parts P
JOIN Categories C ON C.CateID=P.CateID
GO

SELECT * FROM v_Parts
GO

--7. Create a view v_TopParts about 5 parts with the most expensive price.





