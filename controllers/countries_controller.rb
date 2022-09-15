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

get '/countries/compare' do
    country_1 = params['country_1']
    country_2 = params['country_2']
  
    erb :'countries/compare'
end

post '/countries/results' do
    country = []
    pop = []
    area = []
    country[0] = params['country_1']
    country[1] = params['country_2']

    pop[0] = get_population(country[0])
    pop[1] = get_population(country[1])
    
    area[0] = get_area(country[0])
    area[1] = get_area(country[1])

    erb :'countries/results', locals: {
        country: country, pop: pop, area: area
    }
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