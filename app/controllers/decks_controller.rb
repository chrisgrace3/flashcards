get '/decks' do
  @decks = Deck.all
  erb :'/decks/index'
end

get '/decks/new' do
  authenticate!
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
    redirect "/decks/#{@deck.id}/cards/new"
  end
end

get '/decks/:deck_id/cards/new' do
  @deck = Deck.find(params[:deck_id])
  authenticate!
  erb :'/cards/new'
end

post '/decks/:deck_id/cards' do
  '/'
end
