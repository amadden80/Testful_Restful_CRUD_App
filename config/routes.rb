TestfulRestfulCrudApp::Application.routes.draw do
  

  # get '/people' => 'people#index'
  # get '/people/new' => 'people#new'
  # post '/people' => 'people#create'
  # get '/people/:id/edit' => 'people#edit'
  # put '/people/:id' => 'people#update'
  # get '/people/:id' => 'people#show'
  # delete '/people/:id' => 'people#destroy'

  resources :people

end
