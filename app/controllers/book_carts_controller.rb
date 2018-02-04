class BookCartsController < ApplicationController
	
	 def create
	    @book_cart = BookCart.new(book_cart_params)
	    @book_cart.cart_id = current_user.cart.id
        @book_cart.save
        redirect_to cart_path(current_user.cart.id)
	 end

	 def destroy
	 	@book_cart = BookCart.find_by(:cart_id => current_user.cart.id, :book_id => params[:book_id])
        @book_cart.destroy
        redirect_to cart_path(current_user.cart.id)
	end

	 private
	 	def book_cart_params
	 		params.permit(:book_id, :cart_id)
	 	end
end