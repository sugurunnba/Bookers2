class FavoritesController < ApplicationController

  def create
    # book = Book.find(params[:book_id])
    # favorite = current_user.favories.new(post_image_id: post_image.id)
    # favorite.save
    # redirect_to book_path(book)


    book = Book.find(params[:book_id])
    favorite = Favorite.new
    favorite.user_id = current_user.id
    favorite.book_id = book.id
    favorite.save
    redirect_to books_path
  end

  def destroy
    book = Book.find(params[:book_id])
    favorite = current_user.favorites.find_by(book_id: book.id)
    favorite.destroy
    redirect_to books_path

    # book = Book.find(params[:book_id])
    # favorite = Favorite.find_by(book_id: book.id)
    # favorite_user.id = current_user.id
    # favorite.destroy
    # redirect_to book_path(book)
  end

end
