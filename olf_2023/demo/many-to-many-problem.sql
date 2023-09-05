SELECT name, power 
FROM   supers_w_powers
WHERE  power like '%speed%'
OR     power like '%strength%'
OR     power like '%flight%'
ORDER BY power, name;