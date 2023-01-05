require 'pg'

def run_sql(sql, sql_params = [])
  # db = PG.connect(ENV['DATABASE_URL'] || {dbname: 'countries_db'})
  db = PG.connect('postgres://postgres:i3etkMnAjDcwPXM@countriesapp-db.internal:5432')
  results = db.exec_params(sql, sql_params)
  db.close
  results
end