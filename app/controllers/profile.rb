get '/profile' do
  if current_user
    erb :'profile/profile'
  else
    redirect '/'
  end
end


