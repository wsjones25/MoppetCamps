Rails.application.routes.draw do
 
  root to:'pages#home'

  devise_for :users, controllers: {
    sessions:           "users/sessions",
    passwords:          "users/passwords",
    registrations:      "users/registrations",
    confirmations:      "users/confirmations",
    unlocks:            "users/unlocks"
  }

  devise_for :parents, controllers: {
    sessions:           "parents/sessions",
    passwords:          "parents/passwords",
    registrations:      "parents/registrations",
    confirmations:      "parents/confirmations",
    unlocks:            "parents/unlocks"
  }

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'login', to: 'pages#login'
  get 'sign_up', to: 'pages#sign_up'

  resource :user, only: [] do
    resource :company, controller: 'users/companies' do 
      resources :camps, controller: 'users/companies/camps' 
    end
  end
  
end
