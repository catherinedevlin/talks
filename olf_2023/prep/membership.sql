
DROP TABLE IF EXISTS group_or_member CASCADE;

CREATE TABLE group_or_member (
    id        SERIAL PRIMARY KEY,
    name       TEXT NOT NULL,
    super_id   INTEGER REFERENCES supers (id) NULL,
    belongs_to INTEGER REFERENCES group_or_member (id) NULL 
);

INSERT INTO group_or_member (name) VALUES (
    'Innovators of Iniquity'
);

INSERT INTO group_or_member (name, super_id, belongs_to) 
SELECT s.name, s.id, g.id 
FROM   supers s 
CROSS JOIN   group_or_member g 
WHERE  g.name = 'Innovators of Iniquity'
AND    s.name IN ('Henry Fnord', 'Nell Strongarm');

INSERT INTO group_or_member (name, belongs_to) 
SELECT 'Wrong Brothers', g.id 
FROM   group_or_member g 
WHERE  g.name = 'Innovators of Iniquity';

INSERT INTO group_or_member (name, super_id, belongs_to) 
SELECT s.name, s.id, g.id 
FROM   supers s 
CROSS JOIN   group_or_member g 
WHERE  g.name = 'Wrong Brothers'
AND    s.name LIKE '%Wrong';




