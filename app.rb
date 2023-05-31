require 'sinatra'
require "sinatra/reloader" if development?
require_relative "./config/config"
require "sinatra/activerecord"

set :root, File.expand_path("..", __dir__)
set :views, File.expand_path('../views', __FILE__)

get "/" do
  @games = Game.all
  erb :index
end
# get '/index' do
#   # @teams = Team.all
#   # erb :index
# end
