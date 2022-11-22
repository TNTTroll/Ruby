Rails.application.routes.draw do
  get 'newton/input'
  get 'newton/view'

  root 'newton#input'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
