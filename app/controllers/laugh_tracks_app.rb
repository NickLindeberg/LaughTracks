class LaughTracksApp < Sinatra::Base
  set :method_override, true

  get '/comedians' do
    # @comedians = Comedian.find_by(params[:age])
    @comedians = Comedian.all
    @specials = Special.all
    @cities = Comedian.distinct.pluck(:city)
    erb :'comedians/index'
  end
end
