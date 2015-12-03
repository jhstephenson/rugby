Rails.application.routes.draw do
  resources :daily_activities
  resources :projects

  resources :clients

  resources :activitytypes
  mount Upmin::Engine => '/admin'
#  root to: 'visitors#index'
  devise_for :users
  resources :users

  authenticated :user do
    root to: 'visitors#index', as: :authenticated_root
  end
  root to: redirect('/users/sign_in')

end
