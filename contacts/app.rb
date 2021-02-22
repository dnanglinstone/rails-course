require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, { adapter: 'sqlite3' , database: 'test.db' }

class Contact < ActiveRecord::Base
end

get '/option' do
    erb :options
end

get '/option/new' do
    erb :contact
end

post '/option/new/create' do
    contact= Contact.new
    contact.first= params[:first_name]
    contact.last= params[:last_name]
    contact.phone= params[:phone]
    contact.city= params[:city]
    contact.state= params[:state]
    contact.zipcode= params[:zipcode]
    contact.save
    redirect '/option'
end

get '/option/edit' do
    erb :edit
end

post '/option/edit/update' do
    query = "%#{params[:query]%"
    @contacts=Contact.where("last_name LIKE ? OR last_name LIKE ?", query, query)
    contact.save
end






