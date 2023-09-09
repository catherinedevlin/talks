SELECT
    name,
    power
FROM supers_w_powers
WHERE power SIMILAR TO 
    '%(speed|strength|flight)%'
ORDER BY power, name;
