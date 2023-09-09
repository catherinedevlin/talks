LOAD 'age';
SET search_path = ag_catalog, "$user", public;

SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "Captain Columbus"})
  MATCH (s1)-[a:ALLIED_WITH]-(s2:Super)
  RETURN s1, a, s2 
 $$) AS (result1 agtype, a agtype, s2 agtype);
