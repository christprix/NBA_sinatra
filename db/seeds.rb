require "json"
require "rest-client"
require_relative "../app/models/team"
require_relative "../app/models/game"

# Get Last weeks date
lw = DateTime.now.prev_day(6).strftime('%Y-%m-%d')
# Get today's date
d = DateTime.now.strftime('%Y-%m-%d')

# Create Teams and save them to database
# response = RestClient.get "https://www.balldontlie.io/api/v1/teams"
# team_data = JSON.parse(response)
# p team_data = team_data["data"]
# team_data.each do |element|
#   team = Team.new(full_name: element["full_name"],
#     conference: element["conference"],
#     abbreviation: element["abbreviation"],
#     division: element["division"],
#     city: element["city"])
#   team.save
# end

# Make JSON request using the date and last weeks date
response = RestClient.get "https://www.balldontlie.io/api/v1/games?start_date=#{lw}&end_date=#{d}"
game_data = JSON.parse(response)
game_data = game_data["data"]
game_data.each do |element|
  home_team = Team.find(element['home_team']['id'])
  visitor_team = Team.find(element['visitor_team']['id'])
  date = Date.parse(element['date'])
  game = Game.new(date: date,
    home_team_score: element['home_team_score'],
    home_team_id: home_team.id,
    season: element['season'],
    visitor_team_id: visitor_team.id,
    visitor_team_score: element['visitor_team_score'],
    post_season: element['postseason'],
    status: element['status'])
  game.save
end


# Get all players
