class CreatePokemons < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :image_url
      t.integer :national_id
      t.integer :generation
      t.string :species
      t.string :name_fr
      t.float :height_in
      t.string :height_ft
      t.float :height_cm
      t.float :weight_lb
      t.float :weight_kg

      t.timestamps null: false
    end
  end
end
