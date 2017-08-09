require 'sinatra'
require 'sinatra/activerecord'
require './models'

set :database, {adapter: "sqlite3", database: "development.sqlite3"}

get '/' do
  @list_items = ListItem.where(is_done: false)
  @done_items = ListItem.where(is_done: true)
  erb :index
end

post '/' do
  ListItem.create(name: params[:name])
  redirect '/'
end

get '/delete/:id' do
  li = ListItem.find_by_id(params[:id])
  li.destroy
  redirect '/'
end

get '/done/:id' do
  li = ListItem.find_by_id(params[:id])
  li.update(is_done: true)
  redirect '/'
end
