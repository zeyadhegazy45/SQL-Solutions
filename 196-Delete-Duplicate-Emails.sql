delete from Person
where id not in(
    select id
    from 
    (Select min(id) as id from Person
    group by email)sub
)

