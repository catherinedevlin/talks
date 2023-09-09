CREATE OR REPLACE VIEW supers_w_powers AS
SELECT
    s.name,
    s.tagline,
    p.name AS power
FROM supers s
JOIN powers p ON (p.super_id = s.id)
ORDER BY s.id;
