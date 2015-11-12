Rails.application.routes.draw do
<<<<<<< HEAD
  resources :projects
=======
>>>>>>> fae72b46072a805a72fa5bcbfb86c7267a77c3f6
  resources :clients

  resources :activitytypes
  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
