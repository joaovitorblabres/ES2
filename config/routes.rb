Rails.application.routes.draw do
  root 'home#index'

  devise_for :companies, path: 'companies'
  devise_for :users, path: 'users'

  resources :eventos
  resources :categoria
  resources :empresas
  resources :high_scores
  resources :voluntarios
end
