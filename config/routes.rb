Rails.application.routes.draw do
  devise_for :users

  resources :users do
    member do
      patch :set_admin
      patch :remove_admin
    end
  end

  resources :projects
  get 'home/index'
  # root 'home#index'
  root 'projects#index'

  get "up" => "rails/health#show", as: :rails_health_check

end
