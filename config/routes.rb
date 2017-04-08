Rails.application.routes.draw do
  devise_for :users
  devise_for :views
  resources :schools
  resources :contacts, only: [:new, :create] 


  get 'pages/about'

  get 'pages/team'

  root 'schools#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
