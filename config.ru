require 'bundler'
Bundler.require

require './models/user'
require './models/word_game'


require './helpers/authentication_helper'

require './controllers/application_controller'
require './controllers/welcome_controller'
require './controllers/users_controller'
require './controllers/sessions_controller'
require './controllers/word_games_controller'


map('/users'){ run UsersController }
map('/sessions'){ run SessionsController }
map('/word_games'){ run WordGamesController }
map('/'){ run WelcomeController }
