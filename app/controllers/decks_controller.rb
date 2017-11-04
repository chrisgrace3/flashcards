get '/decks' do
  @decks = Deck.all
  erb :'/decks/index'
end

get '/decks/new' do
  erb :'/decks/new'
end

get '/decks/:id' do
  @deck = Deck.find(params[:id])
  erb :'/decks/show'
end

post '/decks' do
  @deck = Deck.new(params[:deck])
  @deck.creator = current_user
  if @deck.save
    redirect :'/'
  end
end

