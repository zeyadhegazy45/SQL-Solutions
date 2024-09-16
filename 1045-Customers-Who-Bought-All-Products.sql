select 
     customer_id
from 
    Customer C
join 
    Product P on C.product_key=P.product_key
group by customer_id
having count(distinct C.product_key) =  (select count(product_key) from Product)

