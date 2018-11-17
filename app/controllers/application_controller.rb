class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # code actions here!
 get '/recipes' do
   erb :index
 end

 get 'new' do
   erb :new
 end

end
