Rails.application.routes.draw do
  root to: "pages#home"
  get "concept", to: "pages#concept"
  get "calendly_privee", to: "pages#calendly_privee"
  get "condition", to: "pages#condition"
  get "/entreprise", to: "pages#entreprise"
  get "/faq", to: "pages#faq"
  get "/formation", to: "pages#formation"
  get "/merci", to: "pages#merci"
  get "/private", to: "pages#private"
  get "/tarifs", to: "pages#tarifs"
  get "/thanks", to: "contacts#thanks"
  resources :contacts, only: [:new, :create]
end
