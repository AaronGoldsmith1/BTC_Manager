Rails.application.routes.draw do

  get 'addresses/' => 'addresses#index'
  post 'addresses/' => 'addresses#create'
  get 'addresses/new' => 'addresses#new', as: :new_address
  get 'addresses/:id' => 'addresses#show', as: :address
  get 'addresses/:id/edit' => 'addresses#edit', as: :edit_address
  put 'addresses/:id' => 'addresses#update'
  patch 'addresses/:id' => 'addresses#update'
  delete 'addresses/:id' => 'addresses#destroy'


  resources :users


  post 'signup' => 'users#create'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

#









  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
