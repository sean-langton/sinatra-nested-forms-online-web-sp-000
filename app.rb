require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get "/" do
      erb :root
    end

    get "/new" do
      erb :"pirates/new"
    end

    get "/pirates" do
      @pirate = Pirate.new(params[:pirate])

      params[:student][:ships].each do |details|
        Ship.new(ship)
      end

      erb :show
    end

  end
end
