select W2.id from Weather W1
join Weather W2 
where datediff(W2.recordDate,W1.recordDate)=1
and W2.temperature>W1.temperature
 