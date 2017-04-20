Rails.application.routes.draw do

  resources :products
  get 'bills/index'
  root "bills#index"

#el scope y api es para identificar que es de un web service
  scope '/api' do
    get "ws_total" => "bills#ws_get_total"
  end

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
