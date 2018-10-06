class LaughTracksApp < Sinatra::Base
  set :method_override, true

  get '/comedians' do
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
      ids = @comedians.pluck(:id)
      @specials = Special.filter_specials(ids)
    else
      @comedians = Comedian.all
      @specials = Special.all
    end
    @cities = @comedians.filter_cities
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

  get '/comedians/:id' do
    @comedian = Comedian.find(params[:id])
    @specials = @comedian.specials
    @title = "#{@comedian.name}"
    erb :'comedians/show'
  end

end
