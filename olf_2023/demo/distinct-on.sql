select distinct on (based_in)
    name,
    based_in
from supers
order by based_in, name;
