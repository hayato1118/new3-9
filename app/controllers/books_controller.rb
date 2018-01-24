class BooksController < ApplicationController
before_action :authenticate_user!
layout 'not_modal'
  def index
      @books = Book.all
      @books = Book.page(params[:page]).reverse_order
      # binding.pry
      @book = Book.new
      #ransack用
    # @search = Book.ransack(params[:q])
    # @products = @search.result
    # @q = Book.ransack(params[:q])
    # @booksss = @q.result(distinct: true)
  end

  def show
      @book = Book.new
      #コメント投稿用
      @bookc = Book.find(params[:id])
      @post_comment = PostComment.new
      @post_comments = @bookc.post_comments.page(params[:page]).reverse_order
 end


  def new
      @book=Book.new
  end


  def create
        @book = Book.new(book_params)
        @book.user_id = current_user.id
        if @book.save
        redirect_to book_path(@book.id)
      else
        @books = Book.page(params[:page]).reverse_order
        render :index
      end
  end


  def edit
        @book = Book.find(params[:id])
  end

  def update
        @book = Book.find(params[:id])
        @book.update(book_params)
        redirect_to book_path(@book.id)
  end

  def destroy
        @book=Book.find(params[:id])
        @book.destroy
        redirect_to books_path
  end


  private
  def book_params
    params.require(:book).permit(:title, :opinion, :user_id, :category, :date, :image, :price)
  end
end
