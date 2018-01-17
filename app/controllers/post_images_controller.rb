class PostImagesController < ApplicationController

  def index
    # render レイアウトファイル
      @books_scroll = Book.all.order(created_at: :desc)
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
