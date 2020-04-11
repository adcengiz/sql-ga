select * 
from production.product p
where p.name like '%Handlebars%';

-- non-case sensitive search
select * 
from production.product p
where p.name ilike '%handlebars%';

-- count of products that have the word "Mountain" in them
select count(productid)
from production.product p
where p.name ilike '%Mountain%';

-- count of products which are not class L
select count(productid)
from production.product p
where p.class != 'L';

-- top 10 highest list prices
select distinct(listprice)
from production.product p
order by p.listprice desc
limit 10;

-- 3 product IDs with the highest profit margins
select productid, p.name, cast(listprice - standardcost as money) as "ProfitMargin"
from production.product p
order by "ProfitMargin" desc
limit 3;

select productid
from production.product p
where standardcost > 2000;

-- names of products that are black and weigh between 18 and 19
select p.name
from production.product p
where color = 'Black' AND weight < 19 AND weight > 18;

-- number of products that take more than 3 days to manufacture
select count(productid)
from production.product p
where p.daystomanufacture > 3;

-- number of product lines
select count(distinct(productline))
from production.product p;

-- average list price of the products in product lines R and S
select avg(listprice)
from production.product p
where p.productline in ('R', 'S');


