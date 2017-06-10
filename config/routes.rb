Rails.application.routes.draw do
  devise_for :users
  resources :articles
  resources :projects
  resources :contacts, only: %i[new create]
  get 'welcome/index'
  root 'welcome#index'
end
