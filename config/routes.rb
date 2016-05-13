Rails.application.routes.draw do
  resources :groups, only: [ :new, :create, :show, :index ]
  root to: 'welcome#index'
end
