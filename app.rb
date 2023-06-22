require 'sinatra'
require "sinatra/reloader" if development?
require_relative "./config/config"
require "sinatra/activerecord"

set :root, File.dirname(__FILE__)
# set :views, Proc.new { File.join(root, "templates") }
# set :root, File.expand_path("..", __dir__)
set :views, File.expand_path('../views', __FILE__)

get '/' do
  erb :index
end
# get '/index' do
#   # @teams = Team.all
#   # erb :index
# end
