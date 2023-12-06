class Game
  attr_reader :date, :season, :home_team, :home_team_score, :visitor_team, :visitor_team_score

  def initialize(attributes = {})
    @date = attributes[:date]
    @season = attributes[:season]
    @home_team = attributes[:home_team]
    @visitor_team = attributes[:visitor_team]
    @home_team_score = attributes[:home_team_score]
    @visitor_team_score = attributes[:visitor_team_score]
  end
end
