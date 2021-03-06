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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130121172606) do

  create_table "feed_locals", :force => true do |t|
    t.string   "feedurl"
    t.datetime "lastupdate"
    t.integer  "currententry"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "feedboxes", :force => true do |t|
    t.string   "title"
    t.string   "url"
    t.datetime "last_update"
    t.integer  "read_index"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "feedcaches", :force => true do |t|
    t.string   "title"
    t.string   "url"
    t.datetime "last_update"
    t.integer  "read_index"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "stories", :id => false, :force => true do |t|
    t.string   "title"
    t.string   "summary"
    t.string   "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.text     "content"
    t.time     "published"
    t.integer  "feedbox_id"
  end

end
