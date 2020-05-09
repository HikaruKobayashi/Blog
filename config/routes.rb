Rails.application.routes.draw do
  root to: 'posts#index'
  resources :posts
  post 'posts/:id/destroy' => 'posts#destroy'
  get "/english" => "posts#english"
  get "/programming" => "posts#programming"

  # resources :introduction, only: [:index]

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

  # エンドポイントが見つからない時の処理をする。
  get '*path' => 'posts#index'
end