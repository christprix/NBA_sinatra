# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_05_30_123005) do
  create_table "games", force: :cascade do |t|
    t.date "date"
    t.integer "season"
    t.integer "home_team_id", null: false
    t.integer "visitor_team_id", null: false
    t.integer "home_team_score"
    t.integer "visitor_team_score"
    t.boolean "post_season"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["home_team_id"], name: "index_games_on_home_team_id"
    t.index ["visitor_team_id"], name: "index_games_on_visitor_team_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "position"
    t.integer "height_feet"
    t.integer "height_inches"
    t.integer "weight_pounds"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "teams_id"
    t.index ["teams_id"], name: "index_players_on_teams_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "full_name"
    t.string "abbreviation"
    t.string "conference"
    t.string "division"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "games", "teams", column: "home_team_id"
  add_foreign_key "games", "teams", column: "visitor_team_id"
  add_foreign_key "players", "teams", column: "teams_id"
end
