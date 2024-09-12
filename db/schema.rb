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

ActiveRecord::Schema[7.1].define(version: 2024_09_11_161301) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bdlteams", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "city"
    t.string "nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_bdlteams_on_user_id"
  end

  create_table "nflteams", force: :cascade do |t|
    t.string "city"
    t.string "nickname"
    t.string "abbreviation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "player_stats", force: :cascade do |t|
    t.bigint "player_id", null: false
    t.bigint "statistic_id", null: false
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "year"
    t.integer "week"
    t.index ["player_id"], name: "index_player_stats_on_player_id"
    t.index ["statistic_id"], name: "index_player_stats_on_statistic_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.bigint "bdlteam_id", null: false
    t.bigint "nflteam_id", null: false
    t.bigint "position_id", null: false
    t.integer "salary"
    t.integer "contract_years"
    t.integer "xp_years"
    t.integer "pff_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bdlteam_id"], name: "index_players_on_bdlteam_id"
    t.index ["nflteam_id"], name: "index_players_on_nflteam_id"
    t.index ["position_id"], name: "index_players_on_position_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string "name"
    t.integer "fa_grouping"
    t.integer "group"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statistics", force: :cascade do |t|
    t.string "name"
    t.bigint "position_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.string "path"
    t.index ["position_id"], name: "index_statistics_on_position_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bdlteams", "users"
  add_foreign_key "player_stats", "players"
  add_foreign_key "player_stats", "statistics"
  add_foreign_key "players", "bdlteams"
  add_foreign_key "players", "nflteams"
  add_foreign_key "players", "positions"
  add_foreign_key "statistics", "positions"
end
