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

ActiveRecord::Schema.define(version: 20150717073354) do

  create_table "candidates", force: :cascade do |t|
    t.string  "last_name"
    t.string  "first_name"
    t.text    "slogan"
    t.integer "position_id"
    t.string  "avatar"
  end

  add_index "candidates", ["position_id"], name: "index_candidates_on_position_id"

  create_table "positions", force: :cascade do |t|
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.integer  "age"
    t.string   "role",                   default: "user"
    t.string   "email",                  default: "",     null: false
    t.string   "encrypted_password",     default: "",     null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,      null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.datetime "birthday"
    t.string   "gender"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["last_name"], name: "index_users_on_last_name"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["role"], name: "index_users_on_role"

  create_table "votes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "candidate_id"
    t.datetime "since"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.text     "comment"
  end

  add_index "votes", ["candidate_id"], name: "index_votes_on_candidate_id"
  add_index "votes", ["user_id"], name: "index_votes_on_user_id"

end
