SELECT 
    DATE_FORMAT(trans_date, '%Y-%m') AS month,
    country,
    COUNT(trans_date) AS trans_count,
    SUM(case when state = 'approved' THEN 1 ELSE 0 END) AS approved_count,
    SUM(amount) AS trans_total_amount,
    sum(case when state = 'approved' then amount ELSE 0 end) as approved_total_amount
FROM 
    Transactions t1
GROUP BY  
    DATE_FORMAT(trans_date, '%Y-%m'), country;
