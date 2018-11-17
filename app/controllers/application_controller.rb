class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # code actions here!
 get '/recipes' do
   erb :index
 end

 get 'new_recipe' do
   erb :new_recipe
 end

 post 'new_recipe' do
   @recipe = Recipe.create(name: params[:name], ingredients: params[:ingredients])
   redirect '/recipes'
 end

 

end
