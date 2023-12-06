# NBA teams
class Team
  attr_reader :abbreviation, :conference, :full_name

  def initialize(attributes = {})
    @full_name = attributes[:full_name] || attributes["full_name"]
    @team_player = attributes[:team_player] || attributes["team_player"]
    @status = attributes[:status] || attributes["status"]
    @abbreviation = attributes[:abbreviation] || attributes["abbreviation"]
    @conference = attributes[:conference] || attributes['conference']
  end
end
