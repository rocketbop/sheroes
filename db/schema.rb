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

ActiveRecord::Schema.define(version: 20140405201704) do

  create_table "line_items", force: true do |t|
    t.integer  "project_id"
    t.integer  "watchlist_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "line_items", ["project_id"], name: "index_line_items_on_project_id"
  add_index "line_items", ["watchlist_id"], name: "index_line_items_on_watchlist_id"

  create_table "projects", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "current_team_size"
    t.integer  "desired_team_size"
    t.text     "headline"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "project_type"
    t.string   "project_length"
    t.string   "primary_technology"
    t.string   "secondary_technology"
    t.string   "tertiary_technology"
  end

  create_table "watchlists", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
