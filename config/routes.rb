Rails.application.routes.draw do
  #devise_for :users, controllers: {
  #	sessions: 'users/sessions'
  #}
  devise_for :users

  authenticated :user do
  	root 'home#dashboard', as: :dashboard_root
  end
  root 'home#index'

  resources :permits

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
