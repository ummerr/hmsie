get '/expenditure' do
  if current_user
    @expenditures = current_user.expenditures
    erb :"/expenditure/expenditures"
  else
    redirect '/'
  end
end


post '/expenditure' do
  @expenditure = Expenditure.create(params[:expenditure])
  current_user.expenditures << @expenditure

  if request.xhr?
    erb :"/profile/_expenditure", layout: false
  else
    redirect "/profile"
  end

end
