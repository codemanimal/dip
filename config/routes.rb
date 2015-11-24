Rails.application.routes.draw do
  root to: 'members#new'

  resources :members

  get 'signup' => 'sign_up#index'

  get 'confirmation' => 'confirmation#index'

  get 'about' => 'about#index'
end
