Rails.application.routes.draw do
  resources :virtual_cards
  resources :cards
  resources :documents
  resources :contact_infos
  resources :people

  devise_for :users
  root to: 'people#index'
end
