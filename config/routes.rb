Rails.application.routes.draw do
  resources :orders, only: [:index, :show, :create, :destroy]
  resources :products

  get 'simple_pages/about'

  get 'simple_pages/contact'
  post 'simple_pages/thank_you'
  get 'simple_pages/landing_page'
  root 'simple_pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
