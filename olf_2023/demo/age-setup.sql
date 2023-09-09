load 'age';
SET search_path = ag_catalog, "$user", public;
select drop_graph('knowledge', true);
select create_graph('knowledge');

SELECT * FROM  
cypher('knowledge', $$
  CREATE (s:Super { name: "The Trilobite", align: NULL, 
          tagline: "Caped Cambrian", based_in: "Silvania" } )
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  CREATE (s:Super { name: "Putin Bae", align: "villain", 
          tagline: "Rasslin’ Russophile", based_in: "Mansfield" } )
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  CREATE (s:Super { name: "Cardinal Virtue", align: "hero", 
          tagline: "Redbird of Righteousness", based_in: "Cincinnati" } )
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  CREATE (s:Super { name: "Orville Wrong", align: "villain", 
          tagline: "Fiend of Flight", based_in: "Dayton" } )
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  CREATE (s:Super { name: "Wilbur Wrong", align: "villain", 
          tagline: "Fiend of Flight", based_in: "Dayton" } )
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  CREATE (s:Super { name: "Henry Fnord", align: "villain", 
          tagline: "Mass-Producer of Mayhem", based_in: "Dearborn" } )
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  CREATE (s:Super { name: "Nell Strongarm", align: "villain", 
          tagline: "Astro-Thug", based_in: "Wapokoneta" } )
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  CREATE (s:Super { name: "The Thinker", align: "hero", 
          tagline: "None", based_in: "Cleveland" } )
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  CREATE (s:Super { name: "Blue Jacket", align: "hero", 
          tagline: "None", based_in: "Chillicothe" } )
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  CREATE (s:Super { name: "Captain Columbus", align: "hero", 
          tagline: "Protector of Ohio", based_in: "Columbus" } )
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  CREATE (s:Super { name: "Buckeye Bullet", align: "hero", 
          tagline: "None", based_in: "Cleveland" } )
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  CREATE (s:Super { name: "Annie Oakley", align: "hero", 
          tagline: "Little Miss Sure Shot", based_in: "Greenville" } )
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  CREATE (s:Super { name: "The Stealer", align: "villain", 
          tagline: "None", based_in: "Pittsburgh" } )
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  CREATE (s:Super { name: "Ohio Gosaimasu", align: "hero", 
          tagline: "Sandusky Samurai", based_in: "Sandusky" } )
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  CREATE (s:Super { name: "The Hawk King", align: "hero", 
          tagline: "None", based_in: "Hocking Hills" } )
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  CREATE (s:Super { name: "Airship Alice", align: "villain", 
          tagline: "None", based_in: "Akron" } )
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  CREATE (s:Super { name: "Motown Menace", align: "villain", 
          tagline: "None", based_in: "Detroit" } )
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  CREATE (s:Super { name: "Captain Cuyahoga", align: "villain", 
          tagline: "Fire and Water Do Mix", based_in: "Cleveland" } )
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  CREATE (s:Super { name: "Indian Jane", align: "hero", 
          tagline: "Nazi-punching archaeologist", based_in: "Bloomington" } )
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  CREATE (s:Super { name: "Defiance Dogman", align: "villain", 
          tagline: "None", based_in: "Defiance" } )
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  CREATE (s:Super { name: "Loveland Frogman", align: NULL, 
          tagline: "None", based_in: "Loveland" } )
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  CREATE (s:Super { name: "Marvelous Mudhen", align: "hero", 
          tagline: "None", based_in: "Toledo" } )
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  CREATE (s:Super { name: "Mad Miller", align: NULL, 
          tagline: "None", based_in: "Milan" } )
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "Orville Wrong" })
  MATCH (s2:Super { name: "Airship Alice" })
  CREATE (s1)-[:ALLIED_WITH]->(s2)
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "Cardinal Virtue" })
  MATCH (s2:Super { name: "Airship Alice" })
  CREATE (s1)-[:FOUGHT]->(s2)
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "The Hawk King" })
  MATCH (s2:Super { name: "Buckeye Bullet" })
  CREATE (s1)-[:ALLIED_WITH]->(s2)
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "Ohio Gosaimasu" })
  MATCH (s2:Super { name: "Buckeye Bullet" })
  CREATE (s1)-[:ALLIED_WITH]->(s2)
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "Ohio Gosaimasu" })
  MATCH (s2:Super { name: "Cardinal Virtue" })
  CREATE (s1)-[:ALLIED_WITH]->(s2)
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "Captain Columbus" })
  MATCH (s2:Super { name: "Cardinal Virtue" })
  CREATE (s1)-[:ALLIED_WITH]->(s2)
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "Annie Oakley" })
  MATCH (s2:Super { name: "Cardinal Virtue" })
  CREATE (s1)-[:ALLIED_WITH]->(s2)
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "The Thinker" })
  MATCH (s2:Super { name: "Defiance Dogman" })
  CREATE (s1)-[:FOUGHT]->(s2)
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "Captain Columbus" })
  MATCH (s2:Super { name: "Defiance Dogman" })
  CREATE (s1)-[:FOUGHT]->(s2)
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "Putin Bae" })
  MATCH (s2:Super { name: "Defiance Dogman" })
  CREATE (s1)-[:ALLIED_WITH]->(s2)
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "Cardinal Virtue" })
  MATCH (s2:Super { name: "Henry Fnord" })
  CREATE (s1)-[:FOUGHT]->(s2)
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "Captain Columbus" })
  MATCH (s2:Super { name: "Henry Fnord" })
  CREATE (s1)-[:FOUGHT]->(s2)
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "Annie Oakley" })
  MATCH (s2:Super { name: "Henry Fnord" })
  CREATE (s1)-[:FOUGHT]->(s2)
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "Ohio Gosaimasu" })
  MATCH (s2:Super { name: "Henry Fnord" })
  CREATE (s1)-[:FOUGHT]->(s2)
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "Cardinal Virtue" })
  MATCH (s2:Super { name: "Henry Fnord" })
  CREATE (s1)-[:FOUGHT]->(s2)
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "Buckeye Bullet" })
  MATCH (s2:Super { name: "Motown Menace" })
  CREATE (s1)-[:FOUGHT]->(s2)
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "The Hawk King" })
  MATCH (s2:Super { name: "Motown Menace" })
  CREATE (s1)-[:FOUGHT]->(s2)
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "Cardinal Virtue" })
  MATCH (s2:Super { name: "Nell Strongarm" })
  CREATE (s1)-[:FOUGHT]->(s2)
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "Annie Oakley" })
  MATCH (s2:Super { name: "Nell Strongarm" })
  CREATE (s1)-[:FOUGHT]->(s2)
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "Henry Fnord" })
  MATCH (s2:Super { name: "Nell Strongarm" })
  CREATE (s1)-[:ALLIED_WITH]->(s2)
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "Putin Bae" })
  MATCH (s2:Super { name: "Ohio Gosaimasu" })
  CREATE (s1)-[:FOUGHT]->(s2)
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "The Hawk King" })
  MATCH (s2:Super { name: "Ohio Gosaimasu" })
  CREATE (s1)-[:ALLIED_WITH]->(s2)
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "Defiance Dogman" })
  MATCH (s2:Super { name: "Ohio Gosaimasu" })
  CREATE (s1)-[:FOUGHT]->(s2)
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "Cardinal Virtue" })
  MATCH (s2:Super { name: "Orville Wrong" })
  CREATE (s1)-[:FOUGHT]->(s2)
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "Cardinal Virtue" })
  MATCH (s2:Super { name: "Putin Bae" })
  CREATE (s1)-[:FOUGHT]->(s2)
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "Captain Columbus" })
  MATCH (s2:Super { name: "Putin Bae" })
  CREATE (s1)-[:FOUGHT]->(s2)
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "Defiance Dogman" })
  MATCH (s2:Super { name: "The Hawk King" })
  CREATE (s1)-[:FOUGHT]->(s2)
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "Putin Bae" })
  MATCH (s2:Super { name: "The Hawk King" })
  CREATE (s1)-[:FOUGHT]->(s2)
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "Ohio Gosaimasu" })
  MATCH (s2:Super { name: "The Stealer" })
  CREATE (s1)-[:FOUGHT]->(s2)
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "Buckeye Bullet" })
  MATCH (s2:Super { name: "The Stealer" })
  CREATE (s1)-[:FOUGHT]->(s2)
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "Captain Columbus" })
  MATCH (s2:Super { name: "The Thinker" })
  CREATE (s1)-[:ALLIED_WITH]->(s2)
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "Captain Columbus" })
  MATCH (s2:Super { name: "The Trilobite" })
  CREATE (s1)-[:FOUGHT]->(s2)
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "Orville Wrong" })
  MATCH (s2:Super { name: "Wilbur Wrong" })
  CREATE (s1)-[:ALLIED_WITH]->(s2)
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (s1:Super { name: "Cardinal Virtue" })
  MATCH (s2:Super { name: "Wilbur Wrong" })
  CREATE (s1)-[:FOUGHT]->(s2)
 $$) AS (result1 agtype);




SELECT * FROM  
cypher('knowledge', $$
  CREATE (g:Group { name: "Innovators of Iniquity"  })
 $$) AS (result1 agtype);


SELECT * FROM  
cypher('knowledge', $$
  CREATE (g:Group { name: "Wrong Brothers", 
          tagline: "Fiends of Flight", based_in: "Dayton" } )
 $$) AS (result1 agtype);



SELECT * FROM  
cypher('knowledge', $$
  MATCH (g:Group { name: "Wrong Brothers" })
  MATCH (s:Super { name: "Wilbur Wrong" })
  CREATE (g)-[:INCLUDES]->(s)
 $$) AS (result1 agtype);


SELECT * FROM  
cypher('knowledge', $$
  MATCH (g:Group { name: "Wrong Brothers" })
  MATCH (s:Super { name: "Orville Wrong" })
  CREATE (g)-[:INCLUDES]->(s)
 $$) AS (result1 agtype);

SELECT * FROM  
cypher('knowledge', $$
  MATCH (g:Group { name: "Innovators of Iniquity" })
  MATCH (s:Super { name: "Henry Fnord" })
  CREATE (g)-[:INCLUDES]->(s)
 $$) AS (result1 agtype);

SELECT * FROM  
cypher('knowledge', $$
  MATCH (g:Group { name: "Innovators of Iniquity" })
  MATCH (s:Super { name: "Nell Strongarm" })
  CREATE (g)-[:INCLUDES]->(s)
 $$) AS (result1 agtype);

SELECT * FROM  
cypher('knowledge', $$
  MATCH (g:Group { name: "Innovators of Iniquity" })
  MATCH (g2:Group { name: "Wrong Brothers" })
  CREATE (g)-[:INCLUDES]->(g2)
 $$) AS (result1 agtype);


SET search_path = "$user", public;









