# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_08_25_121849) do

  create_table "draft_picks", force: :cascade do |t|
    t.integer "player_id"
    t.integer "user_id"
    t.integer "draft_id"
    t.index ["draft_id"], name: "index_draft_picks_on_draft_id"
    t.index ["player_id"], name: "index_draft_picks_on_player_id"
    t.index ["user_id"], name: "index_draft_picks_on_user_id"
  end

  create_table "draft_settings", force: :cascade do |t|
    t.integer "type"
    t.integer "teams"
    t.integer "draft_id"
    t.index ["draft_id"], name: "index_draft_settings_on_draft_id"
  end

  create_table "drafts", force: :cascade do |t|
    t.integer "league_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["league_id"], name: "index_drafts_on_league_id"
  end

  create_table "league_users", force: :cascade do |t|
    t.string "team_name"
    t.boolean "admin"
    t.boolean "owner"
    t.integer "user_id"
    t.integer "league_id"
    t.index ["league_id"], name: "index_league_users_on_league_id"
    t.index ["user_id"], name: "index_league_users_on_user_id"
  end

  create_table "leagues", force: :cascade do |t|
    t.string "name"
    t.string "subdomain"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nfl_teams", force: :cascade do |t|
    t.string "city"
    t.string "mascot"
    t.string "abbrev"
    t.integer "bye_week"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.boolean "drafted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "nfl_team_id"
    t.integer "position_id"
    t.index ["nfl_team_id"], name: "index_players_on_nfl_team_id"
    t.index ["position_id"], name: "index_players_on_position_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
