class LaughTracksApp < Sinatra::Base
  set :method_override, true

  get '/comedians' do
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
    else
      @comedians = Comedian.all
    end
      @specials = Special.all
      @cities = Comedian.distinct.pluck(:city)
    erb :'comedians/index'
  end

  get '/comedians/new' do
    erb :"comedians/new"
  end

  post '/comedians' do
    comedian = Comedian.create(params[:comedian])
    comedian.save
    redirect "/comedians"
  end
end
