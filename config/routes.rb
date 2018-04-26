Rails.application.routes.draw do
  #devise_for :users, controllers: {
  #	sessions: 'users/sessions'
  #}
  devise_for :users

  authenticated :user do
  	root 'permits#my_permits', as: :dashboard_root
    resources :permits
    get 'my_permits/', to: 'permits#my_permits'
    post 'permit_change_state/:id/:state', to: 'permits#change_state', as: 'permit_change_state'
  end
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
