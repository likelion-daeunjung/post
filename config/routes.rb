Rails.application.routes.draw do
  get 'likes/create'
  get 'comments/create'
  devise_for :users
  root "posts#index"
  get 'posts/new'
  post 'posts/create'
  get 'posts/index'
  get 'posts/show/:id' => "posts#show"
  get 'posts/edit/:id' => "posts#edit"
  post 'posts/update/:id' => "posts#update"
  get 'posts/destroy/:id' => "posts#destroy"
  get '/posts/:post_id/likes' => "likes#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :posts do 
  	resources :comments, only: [:create, :delete]
  end
end
