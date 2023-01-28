class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  

  

  get "/trainers" do 
    trainers = Trainer.all
    trainers.to_json(include: :pokemons)
  end 
  get "/trainers/pokemons/:trainer_id" do
    pokemon=Pokemon.where("trainer_id=?",params[:trainer_id])
    pokemon.to_json
    
  end 
  delete "/trainers/:pokemon_id" do
    pokemon=Pokemon.find(params[:id])
    pokemon.destroy
    pokemon.to_json
  end 


end
