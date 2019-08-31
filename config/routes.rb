Rails.application.routes.draw do
  get 'welcome/index'

  resources :foos
  
  root 'welcome#index'
end
