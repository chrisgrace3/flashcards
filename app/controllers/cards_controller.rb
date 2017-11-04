get '/cards/new' do
  authenticate!
  erb :'/cards/new'
end

post '/cards' do
  @card = Card.find(params[:id])
  redirect "/decks/#{@card.deck.id}"
end
