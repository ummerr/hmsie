get '/' do
  erb :welcome
end

post '/login' do
  user = User.find_by(name: params[:user][:name])

  if user.try(:authenticate, params[:user][:password])
    session[:user_id] = user.id
    redirect '/profile'
  else
    redirect '/'
  end
end

post '/signup' do
  user = User.create(params[:user])

  if user.save
    session[:user_id] = user.id
    redirect '/profile'
  else
    redirect '/'
  end

end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end
