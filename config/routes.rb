Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "user_registrations" }
  resources :users
  resources :orders, only: [:index, :show, :create, :destroy]
  resources :products do
    resources :comments
  end

  get 'simple_pages/about'

  get 'simple_pages/contact'
  post 'simple_pages/thank_you'
  get 'simple_pages/landing_page'
  root 'simple_pages#index'

  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
