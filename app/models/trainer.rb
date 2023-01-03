class Trainer < ActiveRecord::Base 
    belongs_to :regions
    has_many :pokemons
    has_many :types 
end 