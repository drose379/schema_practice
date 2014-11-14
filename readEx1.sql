select p.name, p.phone
from person p
where p.id = ?;

select a.address
from address a
join person_address pa on a.id = pa.address
where pa.person = ?;

select h.hobby 
from hobbies h
join person_hobbies ph on h.hobby = ph.hobby
where ph.person = ?;

