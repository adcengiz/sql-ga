select * from
Sales.SalesOrderDetail 
limit 10;

select distinct(unitprice)
from Sales.SalesOrderDetail 
order by unitprice desc
limit 10;

select min(unitprice), max(unitprice)
from Sales.SalesOrderDetail;

-- get the min and max of all the specialofferIDs
select specialofferid, min(unitprice), max(unitprice)
from Sales.SalesOrderDetail
group by specialofferid;

-- order this selection by specialofferID
select specialofferid, min(unitprice), max(unitprice)
from Sales.SalesOrderDetail
group by specialofferid
order by specialofferid;

-- order this selection by the second column in your SELECT
-- it also lets you order by multiple columns
select specialofferid, min(unitprice), max(unitprice)
from Sales.SalesOrderDetail
group by specialofferid
order by 2;

select specialofferid, min(unitprice), max(unitprice)
from Sales.SalesOrderDetail
group by specialofferid
having min(unitprice) > 200;

-- JOIN EXAMPLES
select *
from production.product
limit 10;

select *
from sales.SalesOrderDetail
limit 10;

-- LEFT JOIN
select pod.name, sod.productid, sod.salesorderid
from sales.SalesOrderDetail sod join production.product pod
on sod.productid = pod.productid
limit 10;

select em.businessentityid, em.emailaddress, pm.firstname, pm.lastname
from person.emailaddress em join person.person pm
on em.businessentityid = pm.businessentityid
order by firstname asc
limit 10;

-- Except Join - all sales person ids except for the ones that are assigned to stores
select sp.businessentityid
from Sales.SalesPerson sp
Except
select st.salespersonid
from Sales.Store st
