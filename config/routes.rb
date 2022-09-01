Rails.application.routes.draw do
  resources :kontakts
  #get 'home/index'
  root 'home#index'
  get 'home/about'
  get 'home/produkter'
  get 'home/samarbetspartners'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
