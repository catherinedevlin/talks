import pandas as pd 
from pathlib import Path

SQLITEPATH = Path('../supers.sqlite')

for table in ('supers', 'powers'):
    df = pd.read_sql(f'select * from {table}', 'postgresql://captcbus:forohio@localhost:5455/justice')
    df.to_sql(table, f'sqlite:///{SQLITEPATH}', if_exists='append', index=False)