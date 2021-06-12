Rails.application.routes.draw do
  #Login and SignUp
  post '/login', to: 'authentication#login'
  post '/sign_up', to: 'authentication#sign_up'

  #BankAccount
  resources :bank_accounts, except: [:create, :update, :destroy]

  #User
  resources :users, except: [:create]
  
end
