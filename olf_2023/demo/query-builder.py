import pypika as pk

supers, powers = pk.Tables('supers', 'powers')
q = (pk.Query 
    .from_(supers) 
    .select(supers.star, powers.name)
    .where(supers.align == 'hero')
    .on(powers.super_id == supers.id)
    .join(powers) 
    .where(supers.name > 'M')
    )
print(q)
