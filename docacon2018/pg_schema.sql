
CREATE SCHEMA api;

CREATE TABLE api.films (
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL UNIQUE,
  description TEXT
);

INSERT INTO api.films (title, description) VALUES
  ('Totoro', 'Funny things in the woods'),
  ('Castle in the Sky', 'Soft steampunk');

create role web_anon nologin;
grant web_anon to postgres;

grant usage on schema api to web_anon;
grant select on api.films to web_anon;
