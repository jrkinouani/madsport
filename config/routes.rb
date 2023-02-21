Rails.application.routes.draw do
  root to: "pages#home"
  get "/faq", to: "pages#faq"
  get "/concept", to: "pages#concept"
  get "/private", to: "pages#private"
  get "/stage", to: "pages#stage"
  get "/collectif", to: "pages#collectif"
  get "/contact", to: "pages#contact"
  resources :contacts, only: [:new, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
