class UsersController < ApplicationController

  get '/' do
    redirect 'users/profile'
  end

  get '/new' do
    erb :"users/new"
  end

  post '/' do
    user = User.new(params[:user])
    user.password = params[:password]
    user.save!
    redirect "/"
  end

  get '/profile' do
    authenticate!
    erb :"users/profile"
  end

  get '/index' do
     authenticate!
   end

end
 


