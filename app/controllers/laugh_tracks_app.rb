class LaughTracksApp < Sinatra::Base
  set :method_override, true


  get '/comedians' do
    @comedians = Comedian.all
    @specials = Special.all
    erb :'comedians/index'
  end
end
