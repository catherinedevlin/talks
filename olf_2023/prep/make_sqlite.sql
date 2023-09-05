
CREATE TABLE powers (
	id BIGINT, 
	super_id BIGINT, 
	name TEXT,
    FOREIGN KEY (super_id) REFERENCES supers (id)
);

