select s.name,
       s.tagline,
       p.name AS power
from supers s
join powers p on (p.super_id = s.id)
order by s.id;