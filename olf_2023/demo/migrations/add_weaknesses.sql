create table weaknesses (
    id serial primary key,
    super_id integer references supers (id),
    name text not null
);
