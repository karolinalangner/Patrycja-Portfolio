Rails.application.routes.draw do
  get 'testimonials/index'
  get 'testimonials/new'
  get 'testimonials/create'
  devise_for :users
  root to: 'pages#home'
  
  resources :articles
  resources :testimonials
  resources :contacts, only: [:new, :create]
  get 'o_mnie', to: 'pages#o_mnie'
  get 'kontakt', to: 'pages#kontakt'
  get 'dlaczego_warto_zaufac', to: 'pages#dlaczego_warto_zaufac'
  get 'oferta', to: 'pages#oferta'
  get 'blog', to: 'pages#blog'
  get 'portfolio/teksty_reklamowe', to: 'pages#teksty_reklamowe'
  get 'portfolio/artykuly', to: 'pages#artykuly'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
