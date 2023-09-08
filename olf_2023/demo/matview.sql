CREATE MATERIALIZED VIEW supers_w_powers_mv AS
SELECT * 
FROM   supers_w_powers;

REFRESH MATERIALIZED VIEW supers_w_powers_mv;

CREATE INDEX ON supers_w_powers_mv (name);

SELECT * 
FROM   supers_w_powers_mv
WHERE  name LIKE 'Captain%';