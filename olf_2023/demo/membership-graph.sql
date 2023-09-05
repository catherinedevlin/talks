LOAD 'age';
SET search_path = ag_catalog, "$user", public;


SELECT * FROM  
cypher('knowledge', $$
  MATCH (g:Group { name: "Innovators of Iniquity"})
  MATCH (g)-[i:INCLUDES*1..]->(e)
  RETURN g, i, e
 $$) AS (g agtype, i agtype, e agtype);
