Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post '/addtable', to: 'tables#save', as: 'create_table'
  get '/show', to: 'tables#show', as: 'show_result'
  # Defines the root path route ("/")
  root  'tables#index'
  # root "articles#index"
end
