import pugsql

queries = pugsql.module('pugsql_queries/')
queries.connect(
    'postgresql://captcbus:forohio'
    '@localhost:5455/justice')
for row in queries.supers_by_power(power='%light'):
    print(row)
