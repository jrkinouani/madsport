Rails.application.routes.draw do
  root to: "pages#home"
  get "/about", to: "pages#about"
  get "/collectif", to: "pages#collectif"
  get "/entreprise", to: "pages#entreprise"
  get "/faq", to: "pages#faq"
  get "/formation", to: "pages#formation"
  get "/private", to: "pages#private"
  get "/tarifs", to: "pages#tarifs"
  get "/thanks", to: "contacts#thanks"
  resources :contacts, only: [:new, :create]
end
