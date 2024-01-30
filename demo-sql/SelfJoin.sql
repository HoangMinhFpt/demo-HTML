use Testdemo
go

select p1.nameStudent as name_p1, p1.age as age_p1, p2.nameStudent as name_p2, p2.age as age_p2 
from dbo.students p1, dbo.students p2 
where p1.age > p2.age