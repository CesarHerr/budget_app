Rails.application.routes.draw do

  root 'welcome#index'

  resources :groups do
    resources :paid_ups
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
