require 'sinatra'
require "sinatra/reloader" if development?
require_relative "./config/config"
require "sinatra/activerecord"
require 'json'
require 'net/http'

set :root, File.dirname(__FILE__)
# set :views, Proc.new { File.join(root, "templates") }
# set :root, File.expand_path("..", __dir__)
set :views, File.expand_path('../views', __FILE__)

get '/' do
  # get last week and today's date
  lw = DateTime.now.prev_day(6).strftime('%Y-%m-%d')
  d = DateTime.now.strftime('%Y-%m-%d')
  # make api call using dates
  uri = URI('https://www.balldontlie.io/api/v1/games?start_date=2023-01-23&end_date=2023-01-23')
  response = Net::HTTP.get(uri)
  game_data = JSON.parse(response)
  @games = game_data['data']
  p @games.size
  erb :index
  # store response in game data
  # @game_data = game_data['data']
  # @game_data.update
end
# get '/index' do
#   # @teams = Team.all
#   # erb :index
# end
