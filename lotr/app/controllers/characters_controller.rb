class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def sort_by
   @characters = Character.all.order('name ASC')
   render :index
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
  end
  
  def create
    @character = Character.new(character_params)
    if @character.valid?
      @character.save
      redirect_to character_path(@character)
    end

  end

  def edit
  end


  private

  def character_params
    params.require(:character).permit(:name, :location, :movie_ids => [])
  end

end
