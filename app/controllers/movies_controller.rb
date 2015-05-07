class MoviesController < ApplicationController
  def index
    # Movie.all returns a list of every movie that exists in the Movies table in the database

    @movies = Movie.all
  end

  def show
    # Movie.find will return a movie that has an id that matches the argument
    # Here we pass the id that appears in the parameters hash
    # params is a special hash that contains data that is a part of the URL
    # These are called query string parameters

    @movie = Movie.find(params[:id])
  end

  def new

  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to "/movies"
    else
      render 'new'
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :director, :year, :genre, :image_url)
  end
end
