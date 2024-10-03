# Write your MySQL query statement below
Select 
    name as Customers
from 
    Customers C
where C.id not in (select customerId from Orders)

