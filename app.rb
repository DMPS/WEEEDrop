require 'sinatra'
require 'sinatra/contrib/all'

$recycling = {
  username: 'Bob',
  location: 'London',
  visits: 2,
  local_average_visits: 1.3,
  donated_amount: 24.00
}

get '/?' do
  erb :index
end

get '/map/?' do
  erb :map
end

get '/drop/?' do
  $recycling[:visits] += 1
  redirect to '/'
end
