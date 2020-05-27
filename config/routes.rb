Rails.application.routes.draw do
  devise_for :users
  root "top#index"
    resources :posts, only: [:index ,:create, :new]
    resources :users, only: [:show, :edit, :update]do
      member do
        delete 'destroy_all'
      end
    end

end
