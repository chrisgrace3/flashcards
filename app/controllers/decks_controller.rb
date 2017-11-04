get '/decks/:id' do
  @deck = Deck.find(params[:id])

  if params[:first_time]
    round = Round.create(player_id: session[:user_id], deck_id: @deck.id)
    session[:round_id] = round.id
    @card = @deck.cards.sample
  else
    round = Round.find(session[:round_id])
    unless game_finished?
      @card = round.draw_card
    end
  end

  if game_finished?
    erb :'rounds/results'
  else
    erb :'decks/show'
  end
end
