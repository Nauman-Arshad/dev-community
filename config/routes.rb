Rails.application.routes.draw do
  devise_for :users
  root 'public#index'
  get 'public/show/:id', to: 'public#show', as: 'public_show'
end
