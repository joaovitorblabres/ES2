Rails.application.routes.draw do
<<<<<<< HEAD
  resources :eventos
  resources :categoria
  resources :empresas
  resources :high_scores
  resources :voluntarios
=======
  devise_for :users
  root :to => "home#index"
>>>>>>> 493647992f0272dd9ed64c46187206384ba9acd3
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
