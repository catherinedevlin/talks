-- :name supers_by_power :many
SELECT
    s.name,
    p.name AS power
FROM supers s
JOIN powers p ON (p.super_id = s.id)
WHERE p.name ILIKE :power;
