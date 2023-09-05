
SELECT s.id, s.name, s.tagline, 
       p.name 
FROM   supers s 
JOIN   super_to_power sp ON (sp.super_id = s.id)
JOIN   powers_mtm p ON (sp.power_id = p.id)
ORDER BY s.id, p.id;