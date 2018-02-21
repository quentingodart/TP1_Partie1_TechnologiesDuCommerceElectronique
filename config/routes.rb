Rails.application.routes.draw do
  resources :etats_civils
  resources :client_etats_civils
  resources :enfants
  resources :client_has_enfants
  resources :client_has_employeurs
  resources :client_has_conjoints
  resources :institutions
  resources :etudes
  resources :employeurs
  resources :adresses
  resources :clients
  root :to => "clients#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
