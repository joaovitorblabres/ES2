Rails.application.routes.draw do
  resources :eventos
  resources :categoria
  resources :empresas
  resources :high_scores
  resources :voluntarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
