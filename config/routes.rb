Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  
  resources :articles

  get 'o_mnie', to: 'pages#o_mnie'
  get 'kontakt', to: 'pages#kontakt'
  get 'dlaczego_warto_zaufac', to: 'pages#dlaczego_warto_zaufac'
  get 'oferta', to: 'pages#oferta'

  resources :contacts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
