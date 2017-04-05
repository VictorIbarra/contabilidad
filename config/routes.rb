Rails.application.routes.draw do

  get 'bills/index'

  devise_for :users
  root "bills#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
