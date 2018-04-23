Rails.application.routes.draw do
  #devise_for :users, controllers: {
  #	sessions: 'users/sessions'
  #}
  devise_for :users

  authenticated :user do
  	root 'home#dashboard', as: :dashboard_root
    resources :permits
    get 'my_permits/', to: 'permits#my_permits'
  end
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
