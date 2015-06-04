class PokemonsController < ApplicationController

  def index
    @total_pokemons = 719
  end

  def show
    @pokemon = Pokemon.find(params[:id])
  end

end
