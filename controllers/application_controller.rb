require 'sinatra/base'
require 'sinatra/assetpack'

class ApplicationController < Sinatra::Base


  register Sinatra::AssetPack
  helpers Sinatra::AuthenticationHelper

  enable :sessions
  enable :method_override

  require File.expand_path(File.dirname(__FILE__) + '/../connection')

  set :public_folder, File.expand_path(File.dirname(__FILE__) + '/../public')
  set :views, File.expand_path(File.dirname(__FILE__) + '/../views')

  assets do
    css :application, [
      '/stylesheets/styles.scss',
    ]
    css_compression :sass
  end

end