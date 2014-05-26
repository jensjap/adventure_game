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

ActiveRecord::Schema.define(version: 20140526082722) do

  create_table "adventure_games", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "genre"
    t.string   "content_rating"
    t.text     "content_rating_description"
    t.boolean  "published"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "arcs", force: true do |t|
    t.integer  "scene_id"
    t.integer  "child_scene_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "arcs", ["child_scene_id"], name: "index_arcs_on_child_scene_id"
  add_index "arcs", ["scene_id"], name: "index_arcs_on_scene_id"

  create_table "authorships", force: true do |t|
    t.integer  "user_id"
    t.integer  "adventure_game_id"
    t.boolean  "primary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "authorships", ["adventure_game_id"], name: "index_authorships_on_adventure_game_id"
  add_index "authorships", ["user_id"], name: "index_authorships_on_user_id"

  create_table "scenes", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "adventure_game_id"
  end

  add_index "scenes", ["adventure_game_id"], name: "index_scenes_on_adventure_game_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
