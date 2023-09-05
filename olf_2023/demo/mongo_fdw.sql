-- load extension first time after install
CREATE EXTENSION mongo_fdw;

-- create server object
CREATE SERVER mongo_server
	FOREIGN DATA WRAPPER mongo_fdw
	OPTIONS (address '127.0.0.1', port '27017');

-- create user mapping
CREATE USER MAPPING FOR postgres
	SERVER mongo_server
	OPTIONS (username 'captcbus', password 'forohio');

-- create foreign table
CREATE FOREIGN TABLE battles_fdw
	(
		_id name,
        venue text,
        sides jsonb,
        property_loss text[]]
	)
	SERVER mongo_server
	OPTIONS (database 'supers', collection 'battles');

