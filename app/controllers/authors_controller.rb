class AuthorsController < ApplicationController
  def new
    @Author = Author.new
    @categories = Category.new
    @Category = Category.all
  end

  def create
    @Author = Author.new( author_params )
    @Author.save

    @Category = Category.all

    redirect_to authors_path
  end

  def update
    @Author = Author.find( params[:id])
    @Author.update( author_params )

    redirect_to authors_path
  end

  def edit
    @Author = Author.find(params[:id])
    @Category = Category.all
  end

  def destroy
    @Author = Author.find(params[:id])
    @Author.destroy

    redirect_to authors_path
  end

  def index
    @Author = Author.all
    @Category = Category.all
  end

  def show
    @Category = Category.all
  end

  private
    def author_params
      params.require(:author).permit( :first_name, :last_name )
  end
end
