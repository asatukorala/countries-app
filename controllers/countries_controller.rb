require './models/country'

get '/' do
    countries = all_countries()

    erb :'countries/index', locals: {
        countries: countries 
    }
end

get '/countries/new' do
    erb :'countries/new'
end

post '/countries' do
    name = params['name']
    image_url = params['image_url']
    capital = params['capital']
    area = params['area']
    population = params['population']

    create_country(name, image_url, capital, area, population)

    redirect '/'
end

get '/countries/:id/edit' do
    id = params['id']
    country = get_country(id)

    erb :'countries/edit', locals: {
        country: country
    }
end

put '/countries/:id' do
    id = params['id']
    name = params['name']
    image_url = params['image_url']
    capital = params['capital']
    area = params['area']
    population = params['population']

    update_country(id, name, image_url, capital, area, population)
    redirect '/'
end

delete '/countries/:id' do
    id = params['id']

    delete_country(id)
    redirect '/'
end

# I'm including the likes section, but I'm not sure if I want to include it.
# post '/countries/:id/likes' do
#     country_id = params['id']
#     user_id = session['user_id']
    
#     run_sql("INSERT INTO likes(user_id, country_id) VALUES($1, $2)", [user_id, country_id])
#     redirect '/'
# end