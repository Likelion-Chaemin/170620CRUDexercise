Rails.application.routes.draw do

  root 'home#index'
  get 'home/index'

  get 'home/update/:id' => 'home#update'
  get 'home/destroy/:id' => 'home#destroy'
  get 'home/update_real/:id' => 'home#update_real'


  post 'home/update_real/:id' => 'home#update_real'
  post 'home/create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
