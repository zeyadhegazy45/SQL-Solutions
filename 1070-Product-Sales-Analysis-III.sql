select S.product_id,year as first_year,quantity,price
from 
    Sales S
join 
    Product P on S.product_id=P.product_id
where (S.product_id,year) in (
    select S.product_id,min(year)
    from Sales S
    group by S.product_id
)