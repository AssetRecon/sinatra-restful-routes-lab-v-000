class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # code actions here!
 get '/recipes' do
   @recipes = Recipe.all
   erb :index
 end

 get '/new' do
   erb :new
 end

 post '/new' do
   @recipe = Recipe.create(name: params[:name], ingredients: params[:ingredients])
   redirect '/recipes'
 end

 get '/recipes/:id' do
   @recipe = Recipe.find_by_id(params[:id])
  erb :show
  end

  get '/recipes/:id/edit' do
    @recipe = Recipe.find_by_id(params[:id])
    erb :edit
  end

  delete '/recipes/:id/delete' do
    @recipe = Recipe.find_by_id(params[:id])
    @recipe.delete
  end

end
