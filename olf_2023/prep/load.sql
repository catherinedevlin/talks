DROP TABLE IF EXISTS raw_supers;
create table raw_supers(name text, align text, tagline text,
 based_in text, power_1 text, power_2 text, power_3 text);
 

\copy raw_supers from 'supers.csv' csv header

DROP TABLE IF EXISTS supers CASCADE;
create table supers (id serial primary key, 
  name text not null, align text, tagline text,
  based_in text);

create index on supers (name);

insert into supers (name, align, tagline, based_in)
select trim(name), trim(align), trim(tagline), trim(based_in) from raw_supers;

DROP TABLE IF EXISTS powers CASCADE;
create table powers (id serial primary key, 
  super_id integer references supers(id),
  name text not null
  );

insert into powers (super_id, name)
select s.id,
       trim(lower(rs.power_1))
from   supers s 
join   raw_supers rs on (s.name = trim(rs.name))
where  rs.power_1 is not null;


insert into powers (super_id, name)
select s.id,
       trim(lower(rs.power_2))
from   supers s 
join   raw_supers rs on (s.name = rs.name)
where  rs.power_2 is not null;

insert into powers (super_id, name)
select s.id,
       trim(lower(rs.power_3))
from   supers s 
join   raw_supers rs on (s.name = rs.name)
where  rs.power_3 is not null;


DROP TABLE IF EXISTS raw_interactions;
CREATE TABLE raw_interactions (
  issue      int not null,
  hero_1 text,
  hero_2 text,
  nature     text not null
);

\copy raw_interactions from 'interactions.csv' csv header

DROP TABLE IF EXISTS interactions CASCADE;
CREATE TABLE interactions (
  issue      int not null,
  super_1_id int not null references supers (id),
  super_2_id int not null references supers (id),
  nature     text not null
);

INSERT INTO interactions (
  issue, super_1_id, super_2_id, nature
)
SELECT 
  r.issue,
  s1.id,
  s2.id,
  r.nature
FROM raw_interactions r 
JOIN supers s1 ON (trim(r.hero_1) = s1.name) 
JOIN supers s2 ON (trim(r.hero_2) = s2.name);

DROP TABLE IF EXISTS powers_mtm CASCADE;
CREATE TABLE powers_mtm (
id    SERIAL PRIMARY KEY,
name  text not null);

DROP TABLE IF EXISTS super_to_power CASCADE;
CREATE TABLE super_to_power (
  super_id  integer references supers (id),
  power_id  integer references powers_mtm (id)
);

INSERT INTO powers_mtm (NAME) select DISTINCT name from powers;

INSERT INTO super_to_power (super_id, power_id)
SELECT DISTINCT 
       s.id, 
       pmtm.id 
FROM   supers s 
JOIN   powers p ON (p.super_id = s.id) 
JOIN   powers_mtm pmtm ON (p.name = pmtm.name);


INSERT INTO supers (name, align, tagline, based_in)
VALUES (
  'Innovators of Iniquity', 'group', null, null
),
('Wrong Brothers', 'group', 'Fiends of Flight', 'Dayton');


CREATE TABLE membership (group_id INTEGER REFERENCES supers NOT NULL, member_id INTEGER REFERENCEs supers NOT NULL);

INSERT INTO membership (group_id, member_id)
SELECT g.id, s.id 
FROM   supers g 
CROSS JOIN   supers s 
WHERE  g.name = 'Wrong Brothers'
AND    s.name LIKE '%Wrong';


INSERT INTO membership (group_id, member_id)
SELECT g.id, s.id 
FROM   supers g 
CROSS JOIN   supers s 
WHERE  g.name = 'Innovators of Iniquity'
AND    s.name IN ('Henry Fnord', 'Nell Strongarm', 'Wrong Brothers');


\i age-setup.sql

CREATE TABLE raw_locations (
  city text,
  loc_list text
);

INSERT INTO raw_locations VALUES (
  'Columbus', 'COSI, Convention Center, Capitol, Franklin Park, Arena'
),
('Dayton', 'Air Force museum, Riverscape, Carillon Park, Sunwatch'),
('Toledo', 'Zoo, Great Lakes museum, Imagination Station');

\i membership.sql
