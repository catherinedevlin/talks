from models import Super, Power  
import sqlalchemy as sa 
from pprint import pprint

engine = sa.create_engine(
    'postgresql://captcbus:forohio'
    '@localhost:5455/justice')
with sa.orm.Session(engine) as session:

    stmt = sa.select(Super).where(
        Super.name == 'Ohio Gosaimasu')
    pprint(session.execute(stmt).first()[0])