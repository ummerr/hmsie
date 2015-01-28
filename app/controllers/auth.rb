get '/' do
  erb :welcome
end

get '/login' do

end

post '/login' do
  user = User.find_by(name: params[:user][:name])

  if user.try(:authenticate, params[:user][:password])
    session[:user_id] = user.id
    redirect '#'
  else
    redirect '/'
  end
end

get '/signup' do

end

post '/signup' do
  user = User.create(params[:user])

  if user.save
    session[:user_id] = user.id
    redirect '#'
  else
    redirect '/'
  end

end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end
