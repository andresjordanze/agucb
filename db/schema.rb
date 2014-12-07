# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141205144313) do

  create_table "associateds", force: true do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "phone"
    t.string   "cellphone"
    t.string   "email"
    t.string   "address"
    t.string   "universityDegree"
    t.string   "universityCareer"
    t.string   "yearDegree"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "employementStatus"
    t.string   "associatedType"
    t.integer  "userId"
  end

  create_table "cards", force: true do |t|
    t.integer  "match_id"
    t.integer  "player_id"
    t.integer  "team_id"
    t.string   "type"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matches", force: true do |t|
    t.string   "place"
    t.integer  "team_id_1"
    t.integer  "team_id_2"
    t.string   "referee"
    t.integer  "goals_1"
    t.integer  "goals_2"
    t.date     "date"
    t.time     "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "career"
    t.integer  "goals"
    t.integer  "t_ama"
    t.integer  "t_roj"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "scorers", force: true do |t|
    t.integer  "match_id"
    t.integer  "player_id"
    t.integer  "team_id"
    t.integer  "goals"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.integer  "p_jug"
    t.integer  "p_gan"
    t.integer  "p_per"
    t.integer  "p_emp"
    t.integer  "goles"
    t.integer  "tar_roj"
    t.integer  "tar_ama"
    t.string   "login"
    t.string   "password"
    t.string   "delegado"
    t.string   "email"
    t.string   "phone"
    t.boolean  "check"
    t.string   "category"
    t.integer  "position"
    t.string   "rol"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "rol"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "userType"
    t.string   "state"
  end

end
