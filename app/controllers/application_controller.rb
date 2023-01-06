class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/regions" do
    regions = Region.all 
    regions.to_json
  end

  

  get "/trainers/2" do 
    trainers = Trainer.find_each(start:6, finish:10)
    trainers.to_json(include: :pokemons)
  end 
  get "/trainers/3" do 
    trainers = Trainer.find_each(start:11, finish:15)
    trainers.to_json(include: :pokemons)
  end 
  get "/trainers/4" do 
    trainers = Trainer.find_each(start:16, finish:20)
    trainers.to_json(include: :pokemons)
  end 
  get "/trainers/5" do 
    trainers = Trainer.find_each(start:21, finish:25)
    trainers.to_json(include: :pokemons)
  end 
  get "/trainers/6" do 
    trainers = Trainer.find_each(start:26, finish:30)
    trainers.to_json(include: :pokemons)
  end 
  get "/trainers/7" do 
    trainers = Trainer.find_each(start:31, finish:35)
    trainers.to_json(include: :pokemons)
  end 

end
