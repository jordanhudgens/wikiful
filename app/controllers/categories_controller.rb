class CategoriesController < ApplicationController
  def index
      @categories = Category.order(title: :desc)
  end

  def show
      @category = Category.find(params[:id])
  end

end
