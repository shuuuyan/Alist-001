class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to alist_path(@comment.alist)
    else
      @alist = @comment.alist
      @comments = @alist.comments
      render "alists/show"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, alist_id: params[:alist_id])
  end
end
