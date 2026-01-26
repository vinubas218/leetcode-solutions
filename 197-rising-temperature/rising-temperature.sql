select w.id
from Weather w
join Weather w1
on w.recordDate = date_add(w1.recordDate, interval 1 day)
where w.temperature > w1.temperature