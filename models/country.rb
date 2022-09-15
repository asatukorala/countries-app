def all_countries
    run_sql("SELECT * FROM countries ORDER BY id")
end

def create_country(name, image_url, capital, area, population) 
    run_sql("INSERT INTO countries(name, image_url, capital, area, population) VALUES($1, $2, $3, $4, $5)", [name, image_url, capital, area, population])
end

def get_country(id)
    run_sql("SELECT * FROM countries WHERE id = $1", [id])[0]
end

def update_country(id, name, image_url, capital, area, population)
    run_sql("UPDATE countries SET name = $2, image_url = $3, capital = $4, area = $5, population = $6 WHERE id = $1", [id, name, image_url, capital, area, population])
end

def delete_country(id)
    run_sql("DELETE FROM countries WHERE id = $1", [id])
end

def get_population(name)
    run_sql("SELECT population FROM countries WHERE name = $1",[name])[0]
end

def get_area(name)
    run_sql("SELECT area FROM countries WHERE name = $1",[name])[0]
end