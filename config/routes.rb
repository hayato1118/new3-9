Rails.application.routes.draw do

	root 'post_images#index'
	get "home/about"

	devise_for :users, :controllers => {
	 :registrations => 'users/registrations',
	 :sessions => 'users/sessions'
	}
	get 'users/top/:id' => 'users#top', as: 'user_infomation'
	resources :users

	resources :carts
	resources :orders

	resources :books do
		resource :book_carts, only: [:create,:destroy]
		resource :post_comments, only: [:create, :destroy]
	end

	resources :post_images, only: [:new, :create, :index, :show]

	# resources :books, only: %w(create)
	# resources :books, only: %w(index create)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
