Rails.application.routes.draw do
  # get 'booths/:id/new', to: 'booths#new', :as => :"new_booth"
  # post 'booths/:id/post', to: 'booths#create'
  devise_for :users
  resources :users, :booths
  root 'homes#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
 resources :events
end
