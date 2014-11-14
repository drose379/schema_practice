select p.name, p.phone
from person p
where p.id = ?;

select pa.person
from person_address pa
join address a on pa.person = a.id
where pa.person = ?;

select ph.person 
from person_hobbies ph
join hobbies h on ph.hobby = h.hobby
where ph.person = ?;
