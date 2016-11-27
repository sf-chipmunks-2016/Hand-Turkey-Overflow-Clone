post '/answers' do 
  answer = Answer.create(answer_body: params[:answer])
  redirect "/users/#{session[:id]}"
end