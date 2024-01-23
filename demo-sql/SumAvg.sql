use Testdemo
go

select sum(unit) as unit_total from dbo.fruits
select sum(price) as price_total from dbo.fruits where unit = 10

select avg(price) as price_avg from dbo.fruits
select avg(unit) as unit_avg from dbo.fruits where price = 20