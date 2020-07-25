class PetsController < ApplicationController

  get '/pets' do
    @pets = Pet.all
    erb :'/pets/index' 
  end

  get '/pets/new' do 
    @pets = Pet.all
    erb :'/pets/new'
  end

  post '/pets' do 
    binding.pry
    # params = {"pet"=>{"name"=>"Challo"}, "owner"=>{"name"=>"Ben"}}
    @pet = Pet.create(params[:pet])
    @pet.name = params[:pet][:name]
    redirect to "pets/#{@pet.id}"
  end

  get '/pets/:id' do 
    @pet = Pet.find(params[:id])
    erb :'/pets/show'
  end

  patch '/pets/:id' do 

    redirect to "pets/#{@pet.id}"
  end
end