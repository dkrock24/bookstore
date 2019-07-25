class PublishersController < ApplicationController
  def new
    @publisher = Publisher.new
    @categories = Category.new
    @author = Author.new
    @Category = Category.all
  end

  def create
    @publisher = Publisher.new( publisher_params )
    @publisher.save

    redirect_to publishers_path
  end

  def update
    @publisher = Publisher.find(params[:id])
    @publisher.update( publisher_params )

    @Category = Category.all

    redirect_to publishers_path
  end

  def edit
    @publisher = Publisher.find(params[:id])
    @Category = Category.all

  end

  def destroy
    @publisher = Publisher.find(params[:id])
    @publisher.destroy

    redirect_to publishers_path
  end

  def index
    @publisher = Publisher.all
    @Category = Category.all
  end

  def show
    @Category = Category.all
  end

  private
    def publisher_params
      params.require(:publisher).permit( :name )
  end
end
