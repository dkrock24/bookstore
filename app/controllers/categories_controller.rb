class CategoriesController < ApplicationController
  def new
    @categories = Category.new
    @author = Author.new
    @publisher = Publisher.new
    @Category = Category.all

  end

  def create
    @categories = Category.new(category_params)
    @categories.save

    redirect_to categories_path
  end

  def update
    @Category = Category.find(params[:id])
    @Category.update(category_params)

    redirect_to categories_path
  end

  def edit
    @category = Category.find(params[:id])
    @Category = Category.all
  end

  def destroy
    
    @category = Category.find(params[:id])
    @category.destroy

    redirect_to categories_path
  end

  def index
    @Category = Category.all
  end

  def show
     @category = Category.find(params[:id])
     @Category = Category.all
     @books = @category.book
  end

  private
    def category_params
      params.require(:category).permit( :name )
  end
end
