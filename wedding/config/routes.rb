Rails.application.routes.draw do
    get '/plates/new' => 'plates#new'
    post '/plates' => 'plates#create'
    get '/plates' => 'plates#index'
    get 'plates/edit' => 'plates#edit'
    post '/plates/edit' => 'plates#update'
    get '/plates/delete' => 'plates#delete'
    get 'plates/show' => 'plates#show'
    
    get '/attendees/new' => 'attendees#new'
    post '/attendees' => 'attendees#create'
    get '/attendees' => 'attendees#index'
    get 'attendees/edit' => 'attendees#edit'
    post '/attendees/edit' => 'attendees#update'
    gets '/attendees/delete' => 'attendees#delete'
end
