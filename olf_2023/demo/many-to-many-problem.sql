SELECT
    name,
    power
FROM supers_w_powers
WHERE
    power LIKE '%speed%'
    OR power LIKE '%strength%'
    OR power LIKE '%flight%'
ORDER BY power, name;
