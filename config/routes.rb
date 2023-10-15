Rails.application.routes.draw do

  root 'welcome#index'

  resoucers :group do
    resources :paid_up
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
