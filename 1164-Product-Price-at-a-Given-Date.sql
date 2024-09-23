with cte as (
select product_id,
 new_price 
from 
        Products
where  change_date <="2019-08-16"  and (product_id,change_date) in (
    select product_id,
           max(change_date)
        from Products
    where change_date <="2019-08-16"
    group by product_id

)
group by product_id
)
select 
   Distinct  P.product_id,
    coalesce(c.new_price,10) as price
from 
    (Select Product_id from Products) P
left join 
cte c
on P.product_id=c.product_id
