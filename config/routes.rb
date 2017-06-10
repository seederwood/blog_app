Rails.application.routes.draw do
  resources :articles
  resources :projects
  resources :contacts, only: %i[new create]
  get 'welcome/index'
  root 'welcome#index'
end
