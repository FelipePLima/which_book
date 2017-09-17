class BooksController < ApplicationController
  before_action :set_book, only: [:edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :require_permission

  def index
    @books = Book.search(params[:term])
  end

  def new
    @book = Book.new
  end

  def edit
  end


  def create
    @book = current_user.books.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to books_path(current_user.id), notice: 'Livro criado com sucesso.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to books_path(current_user.id), notice: 'Livro atualizado com sucesso.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @book.destroy
        format.html { redirect_to books_path(current_user.id), notice: 'Livro deletado com sucesso.' }
      else
        format.html { render :index }
      end
    end
  end

  private
    def require_permission
      unless current_user.is_admin?
        flash[:alert] = "Você não tem permissão, para esta ação!"
        redirect_to root_path
      end
    end

    def set_book
      @book = Book.find(params[:id])
    end

    def book_params
      params.require(:book).permit(:title, :user_id, :description, :author, :image, :term)
    end
end
