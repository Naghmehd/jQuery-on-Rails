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

ActiveRecord::Schema.define(version: 20160402024004) do

  create_table "comments", force: :cascade do |t|
    t.integer  "link_id"
    t.integer  "user_id"
    t.string   "message",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["link_id"], name: "index_comments_on_link_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "downvotes", force: :cascade do |t|
    t.integer  "link_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "downvotes", ["link_id"], name: "index_downvotes_on_link_id"

  create_table "links", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title",      null: false
    t.string   "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "links", ["user_id"], name: "index_links_on_user_id"

  create_table "upvotes", force: :cascade do |t|
    t.integer  "link_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "upvotes", ["link_id"], name: "index_upvotes_on_link_id"

  create_table "users", force: :cascade do |t|
    t.string   "full_name",  null: false
    t.string   "username",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
