Rails.application.routes.draw do
  root to: "pages#home"
  get "/faq", to: "pages#faq"
  get "/concept", to: "pages#concept"
  get "/contact", to: "pages#contact"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
