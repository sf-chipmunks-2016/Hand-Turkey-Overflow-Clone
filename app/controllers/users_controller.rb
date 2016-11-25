
# USERS INDEX
get '/users' do
  @users = User.all
  erb :'users/index'
end

# USERS NEW
get '/users/new' do
  erb :'users/new'
end

# USERS CREATE
post '/users' do
  user = User.find_by(email: params[:email])

  if user.nil?
    user = User.create(name: params[:name], email: params[:email],password: params[:password])
    session[:id] = user.id
    redirect "/users/#{user.id}"
    'im here'
  else
    'sup'
    redirect '/users/new'
  end
end

# USERS SHOW
get '/users/:id' do
  @user = User.find(params[:id])
  erb :'users/show'
end

# USERS EDIT
get '/users/:id/edit' do
  @user = User.find(params[:id])
  erb :'users/edit'
end


# USERS UPDATE
put '/users/:id' do
  @user = User.find(params[:id])
  @user.update(params[:user])
  redirect "/users/#{@user.id}"
end


# USERS DESTROY
delete '/users/:id' do
  @user = User.find(params[:id])
  @user.destroy
  redirect "/users"
end