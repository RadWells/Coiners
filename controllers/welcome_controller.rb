class WelcomeController < ApplicationController
  get '/' do
    "Hello, Bro"
    erb :index
  end
end