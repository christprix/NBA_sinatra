class AddTeamsReferenceToPlayers < ActiveRecord::Migration[7.0]
  def change
    add_reference :players, :teams, foreign_key: true
  end
end
