require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root 
    end #do
    
    get '/new' do
      erb :'pirates/new'
    end #do

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])

      params[:pirate][:ships].each do |details_hash|
        Ship.new(details_hash[:name], details_hash[:type], details_hash[:booty])
      end #each

      @ships = Ship.all

      erb :'pirates/show'
    end #do

  end #class
end #module
