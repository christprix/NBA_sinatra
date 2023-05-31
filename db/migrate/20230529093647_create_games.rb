class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.date :date
      t.integer :season
      t.references :home_team, null: false, foreign_key: { to_table: :teams}
      t.references :visitor_team, null:false, foreign_key: { to_table: :teams}
      t.integer :home_team_score
      t.integer :visitor_team_score
      t.boolean :post_season
      t.string :status
      t.timestamps
    end
  end
end
