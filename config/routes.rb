Rails.application.routes.draw do
  resources :projects
devise_for :users
resources :users
resources :users, only: [:show]
resources :books
get"home/about"
resources :post_images, only: [:new, :create, :index, :show]

resources :books, only: [:new, :create, :index, :show] do
resource :post_comments, only: [:create, :destroy]
end

resources :books, only: %w(create)
resources :books, only: %w(index create)

root 'post_images#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end