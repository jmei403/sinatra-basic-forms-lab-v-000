require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    # @puppies = Puppy.all
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  # get '/puppy/:id' do
  #   @puppy = Puppy.find(params[:id])
  # end

  post '/puppy' do
    @puppy = Puppy.new(params[:name], params[:breed], params[:age])
    erb :display_puppy
  end
end
