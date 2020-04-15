-- number of distinct sales order ids with 
-- more than one products
select count(distinct(salesorderid))
from sales.salesorderdetail
where orderqty > 1;

-- 10 product ids with the highest unit prices
select distinct(productid), unitprice
from sales.salesorderdetail
order by unitprice desc
limit 10;

