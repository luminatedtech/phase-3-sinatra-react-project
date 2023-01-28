class CreateTrainers < ActiveRecord::Migration[6.1]
  def change
    create_table :trainers do |t|
      t.string :name 
      t.string :title
      t.string :region
      t.string :avatar_url
      t.integer :type_id
    end 
  end
end
