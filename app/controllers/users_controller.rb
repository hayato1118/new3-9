class UsersController < ApplicationController
before_action :authenticate_user!
layout 'not_modal'
  def index
      #Bookの投稿用
      @users = User.all#kaminariでも表記しているから消せる？
      @book=Book.new
      #kaminari用
      @users = User.page(params[:page]).reverse_order
  end

  def show
      #Bookの投稿用
      @user = User.find(params[:id])
      @book = Book.new
      # binding pry
      #kaminari用
      @books = @user.books.page(params[:page]).reverse_order
  end

  def top
  	  @user = User.find(params[:id])
  end

  def new
      @user = User.new
  end

  def edit
       @user = User.find(params[:id])
  end

  def update
      @user = User.find(params[:id])
      @user.attributes = user_params
      if @user.save(context: :test)
        redirect_to user_path(@user.id)
      else
        render :edit
      end
  end

  private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction, :zip, :state, :mobile, :state, :city, :street, :birth, :sex)
  end
end
