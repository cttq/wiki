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

ActiveRecord::Schema.define(:version => 20130626075914) do

  create_table "emails", :force => true do |t|
    t.string   "from_user"
    t.string   "to_user"
    t.string   "title"
    t.string   "content"
    t.string   "mark_read"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "entertainmentposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.integer  "entertainment_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "entertainmentposts", ["created_at"], :name => "index_entertainmentposts_on_created_at"

  create_table "entertainments", :force => true do |t|
    t.string   "catalog"
    t.string   "title"
    t.string   "content"
    t.string   "user_post"
    t.integer  "viewed",     :default => 1
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.date     "time_start"
    t.date     "time_end"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "homecomments", :force => true do |t|
    t.integer  "user_id"
    t.string   "content"
    t.integer  "home_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "homes", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "content"
    t.integer  "viewed",     :default => 1
    t.integer  "comment",    :default => 0
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "messages", :force => true do |t|
    t.integer  "user_id"
    t.string   "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "myfiles", :force => true do |t|
    t.string   "name_display"
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "posts", :force => true do |t|
    t.integer  "user_id"
    t.string   "topic"
    t.string   "content"
    t.integer  "last_user"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "birth_day"
    t.datetime "date_join"
    t.string   "address"
    t.string   "sothich"
    t.string   "caunoiuathich"
    t.integer  "group"
    t.string   "level"
    t.string   "avatar_path",     :default => "/img/avatar/avatar.png"
    t.string   "remember_token"
    t.datetime "created_at",                                            :null => false
    t.datetime "updated_at",                                            :null => false
    t.string   "password_digest"
  end

end
