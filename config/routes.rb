Rails.application.routes.draw do
  get 'favorites/create'
  get 'favorites/destroy'
  #top
  root 'posts#home'
  post 'posts/create'=>'posts#create', as:'posts'
  #login
  get 'sessions/new'=>'sessions#new' ,as:'login'
  post 'sessions/create'=>'sessions#create',as:'sessions'
  delete 'logout' => 'sessions#destroy'
  #会員登録
  get 'users/new'=>'users#new', as:'signup'
  post 'users/create'=>'users#create',as:'users'
  #mypage
  get 'users/mypage'=>'users#mypage',as:'mypage'
  #ユーザ一覧
  get 'users/index'=>'users#index',as:'users_index'
  get 'users/:id'=>'users#show',as:'show'
  get 'posts/:id'=>'posts#new'
#like
  resources :posts do
    resources :favorites , only: [:create , :destroy]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
