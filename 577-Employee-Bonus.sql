select name ,bonus
from Employee E left join Bonus b
on E.empId=b.empId
where bonus <1000  or bonus is null