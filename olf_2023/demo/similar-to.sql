
SELECT name, power 
FROM   supers_w_powers
WHERE  power similar to '%(speed|strength|flight)%'
ORDER BY power, name;