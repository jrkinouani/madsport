Rails.application.routes.draw do
  root to: "pages#home"
  get "/about", to: "pages#about"
  get "/collectif", to: "pages#collectif"
  get "/concept", to: "pages#concept"
  get "/faq", to: "pages#faq"
  get "/formation", to: "pages#formation"
  get "/private", to: "pages#private"
  get "/thanks", to: "contacts#thanks"
  resources :contacts, only: [:new, :create]
end
