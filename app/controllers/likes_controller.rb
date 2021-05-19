class LikesController < ApplicationController
  before_action :like_params
  
  def create
    Like.create(user_id: current_user.id, alist_id: params[:id])
  end

  def destroy
    Like.find_by(user_id: current_user.id, alist_id: params[:id]).destroy
  end

  def like_params
    @alist = Alist.find(params[:id])
  end
end