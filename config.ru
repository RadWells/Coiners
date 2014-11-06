require 'bundler'
Bundler.require

require './models/user'
require './models/tic_tac_toe'
require './models/word_guess'


require './helpers/authentication_helper'

require './controllers/application_controller'
require './controllers/welcome_controller'
require './controllers/users_controller'
require './controllers/sessions_controller'



map('/users'){ run UsersController }
map('/sessions'){ run SessionsController }
map('/'){ run WelcomeController }