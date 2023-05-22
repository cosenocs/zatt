Rails.application.routes.draw do
  root 'main#index'

  resources :receipts
  resources :attractions
  resources :users

  resource :session, only: [:new, :create, :destroy]
  get 'receipts/:id/cheque' => 'receipts#cheque', as: 'cheque'
end
