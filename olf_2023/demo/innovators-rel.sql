SELECT s.*
FROM   group_or_member i
JOIN   group_or_member i_mem
ON     (i_mem.belongs_to = i.id)
LEFT JOIN   group_or_member i_subgrp_mem 
ON     (i_subgrp_mem.belongs_to = i_mem.id)
JOIN   supers s 
ON     (   s.id = i_mem.super_id 
	OR s.id = i_subgrp_mem.super_id) 
WHERE  i.name = 'Innovators of Iniquity';

