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
  if params[:correct] == "true"
    @correct = true
    @message = "That was correct! Nice job!"
  elsif params[:correct] == "false"
    @correct = false
    @card = Card.find(params[:card])
    @message = "Sorry, that was incorrect."
    @answer = "The correct answer is '#{ @card.correct_answer.answer }'."
  end

  if params[:first_time]
    @round = Round.create(player_id: session[:user_id], deck_id: @deck.id)
    session[:round_id] = @round.id
    @card = @deck.cards.sample
  else
    @round = Round.find(session[:round_id])
    unless @round.game_finished?
      @card = @round.draw_card
    end
  end

  if @round.game_finished?
    erb :'rounds/results'
  else
    erb :'decks/show'
  end
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

