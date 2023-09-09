select
    battle -> 'venue' as venue,
    battle -> 'sides' -> 'villains' -> 'participants' as villains,
    battle -> 'property loss'
from battles
where battle -> 'sides' -> 'villains' ->> 'success' = 'false';
