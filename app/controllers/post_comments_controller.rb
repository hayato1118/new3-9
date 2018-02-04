class PostCommentsController < ApplicationController


def create
    book = Book.find(params[:book_id])
    comment = current_user.post_comments.new(post_comment_params)
    comment.book_id = book.id
    if comment.save
      redirect_to book_path(book)
    else
      #@postcomments = PostComment.all
      #@book = Book.new
      redirect_to book_path(book), flash: { error: comment.errors.full_messages }
    end
end

private
def post_comment_params
  params.require(:post_comment).permit(:user_id,:book_id,:comment)
end
end
