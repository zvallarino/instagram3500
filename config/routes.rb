Rails.application.routes.draw do

  get '*path',
    to: 'fallback#index',
    constraints: ->(req) { !req.xhr? && req.format.html? }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/hello', to: 'application#hello_world'
  # Defines the root path route ("/")
  # root "articles#index"
end
