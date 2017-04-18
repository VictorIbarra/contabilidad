Rails.application.routes.draw do

  get 'bills/index'
  root "bills#index"
  
  resources :bills

  devise_for :users, controllers: {
            sessions: 'users/sessions',
            registrations: 'users/registrations'
            }

  devise_for :clients, controllers: {
            sessions: 'clients/sessions',
            registrations: 'clients/registrations'
            }


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
