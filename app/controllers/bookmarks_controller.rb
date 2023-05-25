class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
    @lists = List.all
    @movies = Movie.all
  end

  def create
    @bookmark =Bookmark.new(params[:bookmark])
    if @bookmark.save
      redirect_to lists_path, notice: 'Bookmark was successfully created.'
    else
      @lists = List.all
      @movies = Movie.all
      render :new
    end


  def delete
  end
end
