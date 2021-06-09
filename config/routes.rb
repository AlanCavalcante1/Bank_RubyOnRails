Rails.application.routes.draw do
  #Login and SignUp
  post '/login', to: 'authentication#login'
  post '/sign_up', to: 'authentication#sign_up'

  #BankAccount
  resources :bank_accounts, expect: [:create]

  #User
  resources :users, expect: [:create]
  
end
