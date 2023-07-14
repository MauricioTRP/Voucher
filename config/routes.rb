Rails.application.routes.draw do
  get 'voucher/index'
  get 'voucher/show'
  get 'voucher/new'
  get 'voucher/edit'
  get 'vouchers/index'
  get 'vouchers/show'
  get 'vouchers/new'
  resources :employees
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
