class SuperherosController < ApplicationController
  def index
    @superheros = Superhero.all 
  end

  def show
    @superhero = Superhero.find(params[:id]) 
  end

  def search
    # byebug
    @found_superheros = Superhero.search_api(params[:search])
    # @superheros = Superhero.superhero_search(response)
    redirect_to searches_path
  end

private 

  def superhero_params
    params.require(:superhero).permit(:search)
  end

end
