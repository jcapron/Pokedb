class CreatePokemonsTypesTable < ActiveRecord::Migration
  def change
    create_table :pokemons_types do |t|
      t.belongs_to :pokemon, index: true
      t.belongs_to :type, index: true
    end
  end
end
