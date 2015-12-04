Rails.application.routes.draw do
  root to: 'members#new'

  resources :members

  get 'signup' => 'sign_up#index'

  get 'confirmation' => 'confirmation#index'

  get 'about' => 'about#index'

  # get 'contact' => 'contact#index'

  # Make available necessary test contact submit routes
  match '/contacts', to: 'contacts#new', via: 'get'
  resources "contacts", only: [:new, :create]
  
end
