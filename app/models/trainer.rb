class Trainer < ActiveRecord::Base 
    belongs_to :regions
    has_many :pokemons
end 