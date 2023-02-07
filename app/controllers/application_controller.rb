class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/trainers' do 
    trainer = Trainer.all 
    trainer.to_json(include: :pokemons)
  end 

  delete '/trainers/:id' do
    trainer = Trainer.find(params[:id])
    trainer.destroy
    trainer.to_json
  end 

  post '/trainers' do 
    # trainer=Trainer.create(
    #   name: params[:name],
    #   region: params[:region],
      
    # )
    trainer = Trainer.create(
      params
    )
    
    trainer.to_json(include: :pokemons)
  end 
  
  patch '/trainers/:id' do 
    trainer = Trainer.find(params[:id])
    trainer.update(
      likes: params[:likes]
    )
    trainer.to_json
  end 



  

  



end
