Rails.application.routes.draw do
  resources :tasklists
  resources :statuses
  resources :messages
  devise_for :users
  resources :users  
  
  authenticated :user do
    resources :daily_activities
    resources :projects
    resources :clients
    resources :activitytypes
    root to: 'visitors#index', as: :authenticated_root
  end

  root to: redirect('/users/sign_in')

end
