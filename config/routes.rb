Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top/main'
  post 'top/login'
  get 'top/delete'
  root 'top#main'
  
 # resources :users, only: [:index, :new, :create, :destroy]
end
