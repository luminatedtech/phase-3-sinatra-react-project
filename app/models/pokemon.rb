class Pokemon < ActiveRecord::Base
    belongs_to :trainers
    has_many :types 
end 