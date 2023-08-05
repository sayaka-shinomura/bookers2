class BooksController < ApplicationController

  #投稿画面
  def new
    @book = Book.new
  end

  #投稿データの保存
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to @book
  end

  def index
  end

  def show
  end

  def edit
  end

  #投稿データのストロングパラメータ
  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
