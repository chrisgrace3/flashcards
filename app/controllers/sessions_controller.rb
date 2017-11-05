get '/sessions/new' do
  erb :"sessions/new"
end

post '/sessions' do
  @user = User.find_by(email: params[:email])
  pass = params[:password]

  if @user && @user.authenticate(pass)
    session[:user_id] = @user.id
    redirect '/'
  else
    @message = "Email or Password does not match. Please try again."
    erb :"sessions/new"
  end
end

get '/logout' do
  session[:user_id] = guest_user.id
  redirect "/"
end

