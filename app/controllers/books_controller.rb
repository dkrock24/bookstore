class BooksController < ApplicationController
  def new
    @books = Book.new
    @categories = Category.new
    @author = Author.new
    @publisher = Publisher.new
    @Category = Category.all
  end

  def create
    @book = Book.new(book_params)
    @book.save

    redirect_to books_path
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to books_path
  end

  def edit
    @books = Book.find(params[:id])
    @Category = Category.all
  end

  def destroy
     @books = Book.find(params[:id])
     @books.destroy

     redirect_to books_path
  end

  def index
    @Books = Book.all
    @Category = Category.all
  end

  def show
    #@book = Book.find(book_params)
    @books = Book.find(params[:id])
    @Category = Category.all
    if @books == nil
      redirect_to :action => "show"
    end    
  end

  private
    def book_params
      params.require(:book).permit(:title, :category_id, :author_id, :publishers_id, :isbn, :year, :price, :buy, :excerpt, :format, :pages, :url)
      #params.require(:book).permit(:title )
  end
end
