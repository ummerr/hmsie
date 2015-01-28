get '/goal' do
  if current_user
    @goals = current_user.goals
    erb :"/goal/goals"
  else

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
