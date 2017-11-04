post '/guesses' do
  @card = Card.find(params[:card_id])
  user_guess = params[:user_guess]

  if @card.answered_correctly?(user_guess)
    Guess.create(round_id: session[:round_id], card_id: @card.id, answered_correctly: true)
  else
    Guess.create(round_id: session[:round_id], card_id: @card.id, answered_correctly: false)
  end
  redirect 'decks/#{@card.deck.id}'
end
