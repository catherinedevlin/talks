select
    s.name,
    s.tagline,
    p.name as power
from supers s
join powers p on (p.super_id = s.id)
order by s.id;
