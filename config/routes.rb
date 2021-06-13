Rails.application.routes.draw do
  resources :portfolios
  get '/home', to: 'pages#home'
  get 'pages/about'
  get 'pages/contact'
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
