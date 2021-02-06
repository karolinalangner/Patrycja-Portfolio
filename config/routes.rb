Rails.application.routes.draw do
  resources :articles
  root to: 'pages#home'
  get 'o_mnie', to: 'pages#o_mnie'
  get 'kontakt', to: 'pages#kontakt'
  get 'dlaczego_warto_zaufac', to: 'pages#dlaczego_warto_zaufac'
  get 'oferta', to: 'pages#oferta'

  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
