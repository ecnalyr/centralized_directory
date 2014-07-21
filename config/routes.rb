Rails.application.routes.draw do
  resources :websites do
    member do
      get :home
      get :about
      get :contact
      get :swap_style
    end
  end


  root to: 'visitors#index'
  devise_for :users
  resources :users
end
