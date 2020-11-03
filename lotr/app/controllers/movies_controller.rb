class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
  @movie = Movie.new(movie_params)
    if @movie.valid?
       @movie.save
       redirect_to movie_path(@movie)
    else
       render :new
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    movie = Movie.find(params[:id])
    movie.update(movie_params)
    redirect_to movie_path(movie)
  end

  def destroy
   delete_movie = Movie.find(params[:id])
   delete_movie.delete
   redirect_to movies_path
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :release_year, :description, :character_ids => [])
  end
  
end
