USE AdventureWorks
GO
--Tạo một thủ tục lưu trữ lấy ra toàn bộ nhân viên vào làm theo năm có
tham số đầu vào là một năm
CREATE PROCEDURE sp_DisplayEmployeesHireYear
@HireYear int
AS
SELECT * FROM HumanResources.Employee
WHERE DATEPART(YY, HireDate)=@HireYear
GO
--Để chạy thủ tục này cần phải truyền tham số vào là năm mà nhân viên
vào làm
EXECUTE sp_DisplayEmployeesHireYear 2003
GO
--Tạo thủ tục lưu trữ đếm số người vào làm trong một năm xác định có
tham số đầu vào là một năm,
-- tham số đầu ra là số người vào làm trong năm này
CREATE PROCEDURE sp_EmployeesHireYearCount
@HireYear int,
@Count int OUTPUT
AS

SELECT @Count=COUNT(*) FROM HumanResources.Employee
WHERE DATEPART(YY, HireDate)=@HireYear
GO
--Chạy thủ tục lưu trữ cần phải truyền vào 1 tham số đầu vào và một
tham số đầu ra.
DECLARE @Number int
EXECUTE sp_EmployeesHireYearCount 2003, @Number OUTPUT
PRINT @Number
GO

--Tạo thủ tục lưu trữ đếm số người vào làm trong một năm xác định có
tham số đầu vào là một năm, hàm trả về số người vào làm năm đó
CREATE PROCEDURE sp_EmployeesHireYearCount2
@HireYear int
AS
DECLARE @Count int
SELECT @Count=COUNT(*) FROM HumanResources.Employee
WHERE DATEPART(YY, HireDate)=@HireYear
RETURN @Count
GO
--Chạy thủ tục lưu trữ cần phải truyền vào 1 tham số đầu và lấy về số
người làm trong năm đó.
DECLARE @Number int
EXECUTE @Number = sp_EmployeesHireYearCount2 2003
PRINT @Number
GO

--Tạo bảng tạm #Students
CREATE TABLE #Students
(
RollNo varchar(6) CONSTRAINT PK_Students PRIMARY KEY,
FullName nvarchar(100),