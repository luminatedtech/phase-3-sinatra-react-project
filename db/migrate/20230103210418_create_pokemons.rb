class CreatePokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :trainer_id
      t.string :type1_id
      t.string :type2_id
      t.integer :level
      t.string :avatar_url
    end 
  end
end
