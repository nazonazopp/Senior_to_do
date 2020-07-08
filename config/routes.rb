Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations',sessions: 'users/sessions' }
  root "top#index"
    resources :posts, only: [:index ,:create, :new]
    resources :comments, only: [:create, :new, :edit, :show, :update]
    resources :users, only: [:show, :edit, :update]do
      member do
        delete 'destroy_all'
      end
    end

end
