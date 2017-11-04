def guest_user?
  guest_user = User.find_by(email: "guest@flashcards.com")
  return current_user == guest_user if session[:user_id]
  false
end
