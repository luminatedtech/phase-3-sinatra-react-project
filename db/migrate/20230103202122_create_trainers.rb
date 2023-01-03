class CreateTrainers < ActiveRecord::Migration[6.1]
  def change
    create_table :trainers do |t|
      t.string :name 
      t.integer :region_id
      t.string :title
      t.integer :type_id 
    end 
  end
end
