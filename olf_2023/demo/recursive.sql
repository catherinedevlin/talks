
WITH RECURSIVE traverse(id, name, align, tagline, based_in) AS (
    SELECT supers.id, name, align, tagline, based_in 
    FROM   supers
    WHERE  name = 'Innovators of Iniquity'
    UNION ALL 
    SELECT traverse.id, traverse.name, traverse.align, traverse.tagline, traverse.based_in
    FROM   traverse 
    JOIN   membership ON traverse.id = membership.member_id
    JOIN   supers ON supers.id = membership.group_id
)
SELECT * FROM traverse;


WITH RECURSIVE m (id, name, tagline) AS (
    SELECT id, name, tagline FROM supers WHERE name = 'Innovators of Iniquity'
    UNION ALL 
    SELECT s.id, s.name, s.tagline
    FROM   supers s
    JOIN   membership ON (membership.m ON (m.)

)


WITH RECURSIVE included_parts(sub_part, part, quantity) AS (
    SELECT sub_part, part, quantity FROM parts WHERE part = 'our_product'
  UNION ALL
    SELECT p.sub_part, p.part, p.quantity * pr.quantity
    FROM included_parts pr, parts p
    WHERE p.part = pr.sub_part
)
SELECT sub_part, SUM(quantity) as total_quantity
FROM included_parts
GROUP BY sub_part

       
    FROM   group_or_member

        node_id,
        entity_type,
        entity_id
    FROM
        entity
    WHERE
        entity.entity_id = $1 AND
        entity.entity_type = 'tracking_number'
    UNION ALL
    SELECT
        entity.node_id,
        entity.entity_type,
        entity.entity_id
    FROM traverse JOIN 
    relation ON traverse.node_id = relation.child JOIN 
    entity ON relation.parent = entity.node_id 
)
SELECT
    traverse.entity_id as order_id
FROM traverse
WHERE traverse.entity_type = 'order'
GROUP BY traverse.entity_id
ORDER BY traverse.entity_id ASC
LIMIT $2;