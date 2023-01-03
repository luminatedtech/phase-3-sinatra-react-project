class CreatePokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :trainer_id
      t.integer :type_id
      t.integer :level
    end 
  end
end
