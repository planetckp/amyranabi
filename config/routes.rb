Rails.application.routes.draw do
  resources :schools
  get 'pages/about'

  get 'pages/contact'

  root 'schools#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
