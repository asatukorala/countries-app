require 'sinatra'
require 'bcrypt'
require './db/db'
require 'dotenv/load'

enable :sessions

require './controllers/countries_controller'
require './controllers/users_controller'
require './controllers/sessions_controller'

require './helpers/sessions_helper'





