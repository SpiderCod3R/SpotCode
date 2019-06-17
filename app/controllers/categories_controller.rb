class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    # byebug
  end
end
