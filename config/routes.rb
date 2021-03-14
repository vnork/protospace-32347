Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get "/users/sign_out", :to => "devise/sessions#destroy"
  end
  root to: 'prototypes#index'
  resources :users, only: [:edit, :update, :show]
  resources :prototypes, only: [:index, :new, :create, :edit, :show, :update, :destroy] do
   resources :comments, only: :create
  end
end
