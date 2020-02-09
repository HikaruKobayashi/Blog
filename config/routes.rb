Rails.application.routes.draw do
  root to: 'posts#index'
  resources :posts, only: [:index, :new, :create, :show]
  post 'posts/:id/destroy' => 'posts#destroy'

  get 'introduction' => 'introduction#index'

  get 'login' => 'sessions#new'
  post 'login'=> 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get 'inquiry' => 'inquiry#index'
  post 'inquiry/confirm' => 'inquiry#confirm'
  post 'inquiry/thanks' => 'inquiry#thanks'

  namespace :admin do
    resources :users, only: [:index, :new, :create, :show]
    post 'users/:id/destroy' => 'users#destroy'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end