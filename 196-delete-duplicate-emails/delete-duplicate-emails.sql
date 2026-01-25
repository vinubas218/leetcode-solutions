delete from person
where id in (
    select id
    from (
        select id,
        dense_rank() over (partition by email order by id) as rn
        from Person
    ) t
    where rn > 1
)
