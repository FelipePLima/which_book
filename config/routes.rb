Rails.application.routes.draw do
  devise_for :users

  root to: "books#index"

  resources :books
  resources :admins do
    member do
      get :change_admin
    end
    collection do
      get :list_users
    end
  end

end
