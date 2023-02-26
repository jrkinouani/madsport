Rails.application.routes.draw do
  root to: "pages#home"
  get "/faq", to: "pages#faq"
  get "/concept", to: "pages#concept"
  get "/private", to: "pages#private"
  get "/formation", to: "pages#formation"
  get "/collectif", to: "pages#collectif"
  resources :contacts, only: [:new, :create]
  get "/thanks", to: "contacts#thanks"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
