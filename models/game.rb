class Game < ActiveRecord::Base
  belongs_to :home_team, class_name: 'Team'
  belongs_to :visitor_team, class_name: 'Team'
end
