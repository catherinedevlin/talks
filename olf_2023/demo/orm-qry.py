from models import Super, Power  
import sqlalchemy as sa 

engine = sa.create_engine(
    'postgresql://captcbus:forohio@localhost:5455/justice')
with sa.orm.Session(engine) as session:
    stmt = sa.select(Super).where(Super.align == 'hero')
    for super in session.execute(stmt).scalars():
        power_list = ', '.join(p.name for p in super.powers)
        print(f'{super.name} has {power_list}')