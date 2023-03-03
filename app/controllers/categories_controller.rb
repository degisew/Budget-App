class CategoriesController < ApplicationController
  def index
    @categories = current_user.categories.all
    # @categories = Category.where(user_id: params[:user_id])
  end

  def new
    @category = Category.new
  end

  def create
    @new_category = current_user.categories.new(category_params)
    if @new_category.save
      flash[:notice] = 'Category successfully created.'
      redirect_to user_categories_url(current_user)
    else
      render 'new'
    end
  end

  private

  def category_params
    params.require(:category).permit(:icon, :name)
  end
end
