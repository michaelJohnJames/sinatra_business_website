require 'sinatra'
require 'sinatra/reloader'

get '/index' do
  erb :index
end

get '/about' do
  erb :about
end

get '/contact' do
  erb :contact
end
