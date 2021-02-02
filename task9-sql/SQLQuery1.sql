INSERT INTO TOYS VALUES ('TA012','Barbie Fashionistas Doll 2','Doll','ABC COMPANY','3-9',10,125,50),
						 ('TX125','LEGO Star Wars','LEGO','LEGO COMPANY','3-12',25,400,30),
						 ('TE025','Pokemon Sword Shield 5','CARD','POKEMON COMPANY','6-12',30,325,85),
						 ('TW325','Step2 Timeless Trends Kitchen','KITCHEN','STEP COMPANY','3-12',125,1200,56),
						 ('XR025','Kid Connection Juinor Doctor','DOCTOR','STEP COMPANY','3-12',66,400,38),
						 ('MT125','CAR RACING','RACING CONTROLLER','LEGO COMPANY','3-12',25,400,96),
						 ('RT325','UNO','CARD ','ABC COMPANY','6-18',6,350,80),
						 ('AM032','TEDDY BEAR','STUFFED ANIMAL','TOY COMPANY','2-12',600,356,120),
						 ('RF025','LEGO AVENGERS','LEGO','LEGO COMPANY','3-12',65,362,80),
						 ('OP256','LEGO CREATOR','LEGO','LEGO COMPANY','3-12',25,129,52),
						 ('PL632','Barbie Fashionistas Doll 3','Doll','ABC COMPANY','3-9',15,156,140),
						 ('KL023','SHIP RACING','RACING CONTROLLER','TOY COMPANY','6-12',852,652,75),
						 ('IO025','LEGO Star Wars2','LEGO','LEGO COMPANY','3-12',365,458,65),
						 ('KI236','LEGO Star Wars3','LEGO','LEGO COMPANY','3-12',925,463,35),
						 ('ML559','LEGO Star Wars4','LEGO','LEGO COMPANY','3-12',525,856,46)


						 CREATE PROCEDURE Display_Customers
AS
SELECT CustID,AccNO,AccName,City,State,Country
FROM Customers



USE AdventureWorks2019
go


CREATE PROCEDURE vdsp 
as
SELECT * FROM
HumanResources.Employee
GO
EXEC vdsp
GO

drop producedure vdsp
GO