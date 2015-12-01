Rails.application.routes.draw do
  resources :daily_activities
  resources :projects

  resources :clients

  resources :activitytypes
  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
