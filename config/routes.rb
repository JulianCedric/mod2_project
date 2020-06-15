Rails.application.routes.draw do

  post '/superheros', to: 'superheros#search', as: 'searches'
  # get '/search', to: 's'

  resources :superheros 
  resources :users 
  resources :appointments 

  get 'appointments/index'
  get 'superheros/index'
  get 'users/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
