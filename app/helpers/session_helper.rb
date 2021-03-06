helpers do
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def authenticate!
    redirect "/sessions/new" unless logged_in?
  end

  def authorize!(user)
    current_user == user
  end

  def guest_user
    @guest_user ||= User.find_by(email: "guest@flashcards.com")
  end

  def guest_user?
    return current_user == guest_user if session[:user_id]
    false
  end

  def reset_guest
    guest_user.rounds.each { |round| round.destroy }
  end
end
