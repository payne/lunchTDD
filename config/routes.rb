Rails.application.routes.draw do
  resources :groups, only: [ :new, :create ]
  root to: 'welcome#index'
end
