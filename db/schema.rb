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

ActiveRecord::Schema.define(version: 2020_03_23_161909) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "requests", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "commentaire", default: ""
    t.integer "managermatricule"
    t.date "startdate"
    t.date "enddate"
    t.string "dates"
    t.integer "confirmed", default: 0
    t.index ["user_id"], name: "index_requests_on_user_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "managermatricule"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "accesstype"
    t.integer "level"
    t.string "prenom"
    t.string "nom"
    t.string "matricule"
    t.string "direction"
    t.integer "paiddaysoff"
    t.integer "unpaiddaysoff"
    t.integer "absenteism"
    t.integer "injurydaysoff"
    t.integer "service"
    t.string "emploi"
    t.bigint "team_id"
    t.date "datedenaissance"
    t.date "datedembauche"
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["team_id"], name: "index_users_on_team_id"
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "requests", "users"
  add_foreign_key "users", "teams"
end
