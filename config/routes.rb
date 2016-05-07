Rails.application.routes.draw do
  resources :groups, only: [ :new, :create, :show ]
  root to: 'welcome#index'
end
