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
  end

  def edit
  end

  def update
    if @alist.update(alist_params)
       redirect_to alist_path(@alist)
    else 
      render :edit
    end
  end

  def destroy
    if @alist.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end


  private
  
  def alist_params
    params.require(:alist).permit(:list1, :list2, :list3).merge(user_id: current_user.id)
  end

  def set_alist
    @alist = Alist.find(params[:id])
  end
end

