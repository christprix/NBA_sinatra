class Team < ActiveRecord::Base
  has_many :home_team_games, class_name: 'Teams', foreign_key: 'home_team_id'
  has_many :visitor_team_games, class_name: 'Teams', foreign_key: 'visitor_team_id'
  has_many :players
end
