select battle->'venue' AS venue,
       battle->'sides'->'villains'->'participants' AS villains,
       battle->'property loss'
from   battles
where  battle->'sides'->'villains'->>'success' = 'false';
