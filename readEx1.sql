select p.name, ph.phone
from person p
join phone ph on p.phone=ph.phone
where p.id = ?;