class AlistsController < ApplicationController

  before_action :set_alist, except: [:index, :new, :create]

  def index
    @alists = Alist.all
  end

  def new
    @alist = Alist.new
  end
  
  def create
    @alist = Alist.create(alist_params)
    if @alist.save
      redirect_to root_path
    else
    render :new
    end
  end

  def show
    # @alist = Alist.new
  end


  private
  
  def alist_params
    params.require(:alist).permit(:list1, :list2, :list3).merge(user_id: current_user.id)
  end

  def set_alist
    @alist = Alist.find(params[:id])
  end
end

