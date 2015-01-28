get '/profile' do
  if current_user
    erb :'profile/profile'
  else
    redirect '/'
  end
end

post '/goal' do
  @goal = Goal.create(params[:goal])
  current_user.goals << @goal

  if request.xhr?
    erb :"/profile/_goal", layout: false
  else
    redirect "/profile"
  end

end

post 'expenditure' do
  @expenditure = Expenditure.create(params[:expenditure])
  current_user.expenditures << @expenditure

  if request.xhr?

  else

  end


end
