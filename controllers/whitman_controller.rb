class WhitmanController < ApplicationController
  get '/' do
    authenticate! #current_user
    erb :'whitman/index', :layout => false
  end
end

