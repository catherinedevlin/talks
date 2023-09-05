LOAD 'age';
SET search_path = ag_catalog, "$user", public;

SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "Captain Columbus"})
  MATCH (s1)-[f1:FOUGHT]-(v:Super)-[f2:FOUGHT]-(s2:Super)
  RETURN s1, f1, v, f2, s2 
 $$) AS (s1 agtype, f1 agtype, v agtype, f2 agtype, s2 agtype);

