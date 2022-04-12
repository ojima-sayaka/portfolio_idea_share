class Admin::CategoryController < ApplicationController
before_action :authenticate_admin!
  def index
    @categores = Category.page(params[:page]).per(8)
    # binding.irb
    @category = Category.first
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to admin_category_path
    else
      @categores = Category.page(params[:page]).per(8)
      render :index
    end
  end

  def updatte
    @category = Category.find(params[:id])
    @category.update(category_params)
    redirect_to admin_category_path
  end



  def edit
    @category = Category.find(params[:id])
  end
end

private

  def category_params
     params.require(:category).permit(:name, :valid_invalid_status)
  end
