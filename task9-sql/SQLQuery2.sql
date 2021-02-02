use adventureWorks2019
go

create procedure vd as
select ModifiedDate, rowguid
from Person.BusinessEntity

execute vd
go

drop procedure vd
go

use AdventureWorks2019
go

create procedure vd2 as
select * from HumanResources.Employee
go

exec vd2
go

drop procedure vd2
go


use adventureWorks2019
go


