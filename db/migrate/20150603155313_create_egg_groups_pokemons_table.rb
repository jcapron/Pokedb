class CreateEggGroupsPokemonsTable < ActiveRecord::Migration
  def change
    create_table :egg_groups_pokemons do |t|
      t.belongs_to :egg_group, index: true
      t.belongs_to :pokemon, index: true
    end
  end
end
