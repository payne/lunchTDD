Rails.application.routes.draw do
  devise_for :users
  resources :groups, only: [ :new, :create, :show ]
  root to: 'welcome#index'
end
