rm ../supers.sqlite
sqlite3 ../supers.sqlite ".read make_sqlite.sql"
python make_sqlite.py 
