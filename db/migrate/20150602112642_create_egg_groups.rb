class CreateEggGroups < ActiveRecord::Migration
  def change
    create_table :egg_groups do |t|
      t.string :name
      t.string :name_fr

      t.timestamps null: false
    end
  end
end
