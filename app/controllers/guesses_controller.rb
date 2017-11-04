post '/guesses' do
  @card = Card.find(params[:card_id])
  user_guess = params[:user_guess]

  if @card.answered_correctly?(user_guess)
    Guess.create(round_id: session[:round_id], card_id: @card.id, answered_correctly: true)
    redirect "decks/#{@card.deck.id}?correct=true&card=#{@card.id}"
  else
    Guess.create(round_id: session[:round_id], card_id: @card.id, answered_correctly: false)
    redirect "decks/#{@card.deck.id}?correct=false&card=#{@card.id}"
  end
end
