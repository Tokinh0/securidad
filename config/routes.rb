Rails.application.routes.draw do
  resources :virtual_cards
  resources :cards
  resources :documents
  resources :contact_infos
  resources :people

  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get '/help', to: 'pages#help'
  get '/terms-of-service', to: 'pages#terms_of_service'
  get '/landing-page', to: 'pages#landing_page'

  devise_for :users
  authenticated do
    root to: 'pages#home', as: :authenticated_root
  end

  root to: 'pages#landing_page'
end
