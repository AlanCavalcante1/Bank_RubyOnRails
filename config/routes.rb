Rails.application.routes.draw do
  post '/login', to: 'authentication#login'
  post '/sign_up', to: 'authentication#sign_up'
  resources :bank_accounts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
