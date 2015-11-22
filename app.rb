require 'sinatra'
require 'sinatra/contrib/all'
require 'json'

get '/' do

    @recycling = {
    username: 'Bob',
    location: 'London',
    visits: 2,
    local_average_visits: 1.3,
    donated_amount: 24.00
  }
  
  erb :index
end

# get '/login' do
#   erb :login
# end

get '/login2' do
  erb :login2
end

get '/map' do
  erb :map
end